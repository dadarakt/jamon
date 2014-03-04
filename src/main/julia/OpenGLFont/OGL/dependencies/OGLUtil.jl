
include("GLUTWindow.jl")
include("GLMatrixMath.jl")
include("shader.jl")
include("RichText.jl")

import Images.imread

global flatShader 
global textShader
global projMatrix = eye(GLfloat, 4,4)
global viewMatrix = eye(GLfloat, 4,4)
global model      = eye(GLfloat, 4,4)
model[1,4] = 1
model[2,4] = 1

function glimreadGray(filename::String)

    img = imread(filename)
    w = size(img,2)
    h = size(img,3)
    img1D = Array(Uint8, w*h)
    img1DIndex = 1
    for hI=1:h
        for wI=1:w
            img1D[img1DIndex] = img[1, wI, hI]
            img1DIndex = img1DIndex + 1
        end
    end
    return img1D, w, h
end

immutable Texture
    id::GLuint
    textureType::Uint16
    format::Uint16
    width::Int
    height::Int
    function Texture(path::ASCIIString; textureType::Uint16 = TEXTURE_2D, format::Uint16 = RGB)
    	if format == RGB
			img, w, h = glimread(path)
		elseif format == DEPTH_COMPONENT
			img, w, h = glimreadGray(path)
		else 
			error("Format not supported")
		end
		@assert length(img) > 0

	    id = glGenTexture()
	    glBindTexture	(textureType, id)
	    glTexParameteri	( textureType, TEXTURE_WRAP_S, CLAMP_TO_EDGE )
	    glTexParameteri	( textureType, TEXTURE_WRAP_T, CLAMP_TO_EDGE )
	    glTexParameteri	( textureType, TEXTURE_MAG_FILTER, LINEAR )
	    glTexParameteri	( textureType, TEXTURE_MIN_FILTER, LINEAR )
	    glTexImage2D	( textureType, 0, format, w, h, 0, format, UNSIGNED_BYTE, img)
	    img = 0
	    new(id, textureType, format, w, h)
    end
end




immutable GLBuffer
    id::GLuint
    usage::Uint16
    bufferType::Uint16
    format::Uint16
    size::Int32
    function GLBuffer(usage::Uint16, bufferType::Uint16, format::Uint16, buffer::Array{Float32, 1})
    	size = length(buffer)
    	_id = glGenBuffer()

    	glBindBuffer(bufferType, _id)
    	glBufferData(bufferType, sizeof(buffer), buffer, usage)
    	buffer = 0
    	glBindBuffer(bufferType, 0)
    	new(_id, usage, bufferType, format, size)
    end
end
type UVVBO
	vertexArrayID::GLuint
	vertexBuffer::GLBuffer
	uvBuffer::GLBuffer
	textureID::GLuint
end

immutable Program
	id::GLuint
	Program(name::ASCIIString) = new (loadShaders(name))
end

type AsciiAtlas
    lineHeight::GLfloat
    advance::GLfloat
    texture::Texture
    dictionary::Dict{Char, (Array{Float32, 1}, Float32)}
    textVertArray::GLuint
end

function AsciiAtlas(name::String)
    global textShader
    texture             = Texture("$(name).bmp", format=DEPTH_COMPONENT)
    flStream            = open("$(name).txt")
    width               = int(readline(flStream))
    height              = int(readline(flStream))
    lineHeight::Float32 = int(readline(flStream))
    advance::Float32 = 0

    asciiDict   = Dict{Char, (Array{Float32, 1},  Float32)}()
    verts       = Array(Float32, 0)
    uv          = Array(Float32, 0)

    for line in eachline(flStream)
        values                  = split(line)
        charCode                = char(int(values[1]))
        advance                 = int(values[2])
        x::Float32              = int(values[3]) / width
        x2::Float32             = (int(values[3]) + advance) / width
        y::Float32              = int(values[4]) / height
        texLineHeight::Float32  = lineHeight / height

        charUV = [
            x, y + texLineHeight,
            x, y , 
            x2, y + texLineHeight, 
            x2, y+ texLineHeight,
            x, y ,
            x2, y]
        asciiDict[charCode] = (charUV, advance)
        push!(verts, createQuad(0f0, 0f0, advance, lineHeight)...)
        push!(uv, charUV...)
    end

    vertBuff    = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, verts)
    uvBuff      = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, uv)

    vetexArrayID = glGenVertexArray()
    glBindVertexArray(vetexArrayID)
    glBindBuffer(ARRAY_BUFFER, vertBuff.id)
    vertexLoc   = glGetAttribLocation(textShader.id, "position")
    glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)
    glBindBuffer(ARRAY_BUFFER, uvBuff.id)
    uvLoc   = glGetAttribLocation(textShader.id, "uv")
    glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)
    glEnableVertexAttribArray(vertexLoc)
    glEnableVertexAttribArray(uvLoc)
    glBindVertexArray(0)

    close(flStream)
    AsciiAtlas(lineHeight, advance, texture, asciiDict, vetexArrayID)
end


abstract Shape



immutable Circle <: Shape
    glContent::GLBuffer
    attributes::Array{Float32, 1}
    transformations::Matrix
    color::Array{Float32, 1}
    function Circle(radius::Float32, middleX::Float32, middleY::Float32, color::Array{Float32,1})
        if length(color) == 3
            color = [color..., 1f0]
        elseif length(color) != 4
            throw(error("not a color"))
        end 
        new(CIRCLE, [middleX, middleY, radius], [radius 0 0 middleX ; 0 radius 0 middleY ; 0 0 0 0 ; 0 0 0 1], color)
    end
end
immutable Rectangle <: Shape
    glContent::GLBuffer
    attributes::Array{Float32, 1}
    transformations::Matrix
    color::Array{Float32, 1}
    function Rectangle(x::Float32, y::Float32, width::Float32, height::Float32, color::Array{Float32,1})

        if length(color) == 3
            color = [color..., 1f0]
        elseif length(color) != 4
            throw(error("not a color"))
        end 
        new(RECTANGLE, [x, y, width, height], [width 0 0 x ; 0 height 0 y ; 0 0 0 0 ; 0 0 0 1], color)
    end
end

immutable Polygon <: Shape
    glContent::GLBuffer
    attributes::Array{Float32, 1}
    transformations::Matrix
    color::Array{Float32, 1}
    function Polygon(polygon::Array{Float32, 1}, color::Array{Float32,1})
        @assert length(polygon) % 2 == 0
        boundingBox = [-Inf32, -Inf32, Inf32, Inf32]
        for i=1:length(polygon) - 1
            x = polygon[i]
            y = polygon[i + 1]
            if x < boundingBox[3]
                boundingBox[3] = x
            elseif x > boundingBox[1]
                boundingBox[1] = x
            end
            if y < boundingBox[4]
                boundingBox[4] = y
            elseif y > boundingBox[2]
                boundingBox[2] = y
            end
        end
        if length(color) == 3
            color = [color..., 1f0]
        elseif length(color) != 4
            throw(error("not a color"))
        end 
        boundingBox[1] = boundingBox[1] 
        new(GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, polygon), boundingBox, eye(Float32, 4,4), color)
    end
end

_radius(a::Circle) = a.attributes[3]
_x(a::Union(Rectangle, Circle)) = a.attributes[1]
_y(a::Union(Rectangle, Circle)) = a.attributes[2]
_width(a::Rectangle) = a.attributes[3]
_height(a::Rectangle) = a.attributes[4]



function inside(polygon::Polygon, x::Real, y::Real)
    a = polygon.points
    c = false
    i = length(a) - 1
    for (x1, y1) in a
        (x0, y0) =  a[i % length(a) + 1]
        if (y1 < y) != (y0 > y) &&
            (x < (x0-x1) * (y-y1) / (y0-y1) + x1)
            c = ~c
        end 
        i += 1
    end
    return c
end
function inside(circle::Circle, x::Real, y::Real)
    xD = abs(_x(circle) - x) - _radius(circle) 
    yD = abs(_y(circle) - y) - _radius(circle)
    xD <= 0 && yD <= 0
end
function inside(rect::Rectangle, x::Real, y::Real)
    _x(rect) <= x && _y(rect) <= y && _x(rect) + _width(rect) >= x && _y(rect) + _height(rect) >= y 
end




function glGetVariable(variable::Uint16)
    result::Ptr{GLint} = int32([-1])
    glGetIntegerv(uint32(variable), result)
    unsafe_load(result)
end
function glGenBuffer()
    result::Ptr{GLuint} = uint32([0])
    glGenBuffers(1, result)
    unsafe_load(result)
end
function glGenVertexArray()
	result::Ptr{GLuint} = uint32([0])
	glGenVertexArrays(1, result)
	unsafe_load(result, 1)
end
function glGenTexture()
	result::Ptr{GLuint} = uint32([0])
	glGenTextures(uint64(1), result)
	unsafe_load(result, 1)
end
function createQuad(x::GLfloat, y::GLfloat, width::GLfloat, height::GLfloat)
    v = [
    x, y,
    x, y + height,
    x + width,  y,
    x + width,  y,
    x, y + height,
    x+ width, y + height]
end
function createQuadUV()
    v = float32([
    0, 1,
    0, 0,
    1, 1,
    1, 1,
    0, 0,
    1, 0])
end
function createCircle(r, x, y, amount)
    slice = (2*pi) / amount
    result = float32([x,y])
    for i = 0:amount-1
        angle = slice * i
        push!(result, float32(x + r * cos(angle)), float32(y + r * sin(angle)))
    end
    push!(result, float32(x + r * cos(0)), float32(y + r * sin(0)))
    return result
end
function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*2 + 1:i*6*2] = vTemp
    end
    return vertices
end





function render(char::Char, x::Float32, y::Float32)
    glUniformMatrix4fv(glGetUniformLocation(textShader.id, "mvp"),  1, FALSE, reshape(projMatrix * model * [1 0 0 x ; 0 1 0 y ; 0 0 1 0 ; 0 0 0 1], 16))
    glDrawArrays(TRIANGLES, int(char) * 6, (int(char) + 1) * 6)
end


#render(string::String, x::Real, y::Real) = render(string, float32([0,0,0,1]), x, y)
#render(string::String, color::Array{Real, 1}, x::Real, y::Real) = render(string, float32(color), x, y)
#render(string::String, color::Array{Float32, 1}, x::Real, y::Real) = render(StyledWord(color, string), x, y)
#render(word::StyledWord, x::Real, y::Real) = render([word], x, y, standardFont)
#render(words::Array{StyledWord, 1}, x::Real, y::Real, font::AsciiAtlas) = render(words, float32(x), float32(y), font)

function render(words::Array{StyledWord, 1}, x::Float32, y::Float32, font::AsciiAtlas, delimiter::Shape)
    glEnable(DEPTH_TEST)

    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glUseProgram(textShader.id)
    glBindVertexArray(font.textVertArray)
    glActiveTexture(TEXTURE0)
    glBindTexture(TEXTURE_2D, font.texture.id)
    glUniform1i(glGetUniformLocation(textShader.id, "fontTexture"), 0)
    oldX = x
    for word in words
        render(word.style)
        for char in word.text
            if char == '\n' || char == '\r'
                y -= font.lineHeight
                x = oldX
            elseif isblank(char)
                x += font.advance
            else
                if inside(delimiter, x, y)
                    render(char, x, y)
                end
                x += font.advance 
            end
        end
    end
    glBindVertexArray(0)
end

function render(style::Style)
    glUniform4f(glGetUniformLocation(textShader.id, "textColor"), style.color...) 
    glUniform4f(glGetUniformLocation(textShader.id, "backgroundColor"), float32([0,0,0,0.0])...) 
end
function render(shape::Shape)
    global projMatrix, model, flatShader
    glDisable(DEPTH_TEST)
    glUseProgram(flatShader.id)
    glUniformMatrix4fv(glGetUniformLocation(flatShader.id, "mvp"),  1, FALSE, reshape(projMatrix * model * shape.transformations, 16))
    glUniform4f(glGetUniformLocation(flatShader.id, "Color"), shape.color...)

    glEnableVertexAttribArray(glGetAttribLocation(flatShader.id, "position"))
    glBindBuffer(ARRAY_BUFFER, shape.glContent.id)
    glVertexAttribPointer(glGetAttribLocation(flatShader.id, "position"), 2, FLOAT, FALSE, 0, 0)
    glDrawArrays(shape.glContent.format, 0, shape.glContent.size)
    glBindBuffer(ARRAY_BUFFER, 0)
end

type Cursor
    draw::Shape
    line::Int
    word::Int
    index::Int
end

type TextField
    area::Shape
    font::AsciiAtlas
    style::Dict{ASCIIString, Style}
    enrichedText::Array{StyledWord, 1}
    text::ASCIIString
    cursor::Cursor
    scroll::Int
    focus::Bool

    function TextField(area::Shape,
    font::AsciiAtlas,
    style::Dict{ASCIIString, Style},
    text::ASCIIString,
    scroll::Int)

        enriched = enrich(text, JuliaNonBlankSeperators, style)
        new(area, font, style, enriched, text, 
            Cursor(Rectangle(_x(area),_y(area) - scroll, 5f0,20f0, float32([0, 0, 0, 1])), 1, 1, 1), 
            scroll, false)
    end
end

function render(textField::TextField)
    glEnable(BLEND)
    #Use a simple blendfunc for drawing the background
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)
    render(textField.area)
    render(textField.cursor.draw)
   # glBlendFuncSeparate(ZERO, ONE, SRC_COLOR, ZERO)

    mask = deepcopy(textField.area)
    #fill!(mask.color, 0f0)
    #mask.color[4] = 1f0
    #render(mask)
    #glBlendFunc(DST_ALPHA, ONE_MINUS_DST_ALPHA)
    #model = eye(Float32, 4,4)
    #model[2,4] = textField.scroll

    render(textField.enrichedText, _x(textField.area), _y(textField.area) - textField.scroll, textField.font, textField.area)
end


function initUtils()
    glClearColor(1f0, 1f0, 1f0, 0f0)
    glDisable(DEPTH_TEST)
    glDisable(CULL_FACE)
    glEnable(MULTISAMPLE)
    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    global flatShader   = Program("dependencies/flatShader")
    global textShader   = Program("dependencies/textShader") 
    global BRDFShader   = Program("dependencies/BRDF") 
    global standardFont = AsciiAtlas("dependencies/VeraMono")


    global CIRCLE = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, createCircle(1, 0, 0, 124))
    global RECTANGLE = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, createQuad(0f0,0f0, 1f0, 1f0)) 
end

