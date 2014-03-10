
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




type Cursor
    line::Int
    word::Int
    index::Int
    position::Array{Int, 1}
end

type TextField
    area::Shape
    font::AsciiAtlas
    style::Dict{ASCIIString, Style}
    enrichedText::Array{Array{StyledWord,1}, 1}
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
            Cursor(1, 1, 1, [0,0]), 
            scroll, false)
    end
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

function render(text::Array{Array{StyledWord,1}, 1}, x::Float32, y::Float32, font::AsciiAtlas, delimiter::Shape)
    glEnable(DEPTH_TEST)

    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glUseProgram(textShader.id)
    glBindVertexArray(font.textVertArray)
    glActiveTexture(TEXTURE0)
    glBindTexture(TEXTURE_2D, font.texture.id)
    glUniform1i(glGetUniformLocation(textShader.id, "fontTexture"), 0)
    xStart = x
    for line in text
        for word in line
            render(word.style)
            for char in word.text
                if isblank(char)
                    x += font.advance
                else
                    if inside(delimiter, x, y)
                        render(char, x, y)
                    end
                    x += font.advance 
                end
            end
        end
         y -= font.lineHeight
         x = xStart
    end
    glBindVertexArray(0)
end
function render(textField::TextField)

    global cursorRect = Rectangle(_x(textField.area),_y(textField.area),3f0, textField.font.lineHeight + 2f0, float32([0, 0, 0, 1]))
    glEnable(BLEND)
    #Use a simple blendfunc for drawing the background
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)
    render(textField.area)

    cursorRect.transformations[1:2,4] = [_x(textField.area),_y(textField.area)]
    cursorRect.transformations[1:2,4] += textField.cursor.position

    render(cursorRect)
   # glBlendFuncSeparate(ZERO, ONE, SRC_COLOR, ZERO)

    #mask = deepcopy(textField.area)
    #fill!(mask.color, 0f0)
    #mask.color[4] = 1f0
    #render(mask)
    #glBlendFunc(DST_ALPHA, ONE_MINUS_DST_ALPHA)
    #model = eye(Float32, 4,4)
    #model[2,4] = textField.scroll

    render(textField.enrichedText, _x(textField.area), _y(textField.area) - textField.scroll, textField.font, textField.area)
end

function render(style::Style)
    glUniform4f(glGetUniformLocation(textShader.id, "textColor"), style.color...) 
    glUniform4f(glGetUniformLocation(textShader.id, "backgroundColor"), float32([0,0,0,0.0])...) 
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

