
include("GLUTWindow.jl")
include("GLMatrixMath.jl")
include("shader.jl")

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
type GLWordNode
    transform::Array{Float32, 2}
    color::Array{Float32, 1}
    index::(Int, Int)
end

type AsciiAtlas
	lineHeight::GLfloat
	advance::GLfloat
	texture::Texture
	dictionary::Dict{Char, Array{Float32, 1}}
end
function AsciiAtlas(name::String)
    texture          	= Texture("$(name).bmp", format=DEPTH_COMPONENT)
    flStream    		= open("$(name).txt")
    width      		 	= int(readline(flStream))
    height      		= int(readline(flStream))
    lineHeight::Float32 = int(readline(flStream))

    asciiDict = Dict{Char, Array{Float32, 1}}()
    advance::Float32 = 0
    for line in eachline(flStream)
        values          		= split(line)
        charCode        		= char(int(values[1]))
        advance  				= int(values[2])
        x::Float32      		= int(values[3]) / width
        x2::Float32     		= (int(values[3]) + advance) / width
        y::Float32      		= int(values[4]) / height
        texLineHeight::Float32 	= lineHeight / height

        asciiDict[charCode] = [
            x, y + texLineHeight,
            x, y , 
            x2, y + texLineHeight, 
            x2, y+ texLineHeight,
            x, y ,
            x2, y]
    end
    close(flStream)
    AsciiAtlas(lineHeight, advance, texture, asciiDict)
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


abstract Shape

immutable Circle <: Shape
    glContent::GLBuffer
    attributes::Array{Float32, 1}
    transformations::Matrix
    color::Array{Float32, 1}
    function Circle(radius::Float32, middleX::Float32, middleY::Float32, color::Array{Float32,1})
        new(CIRCLE, [radius, middleX, middleY], [radius 0 0 middleX ; 0 radius 0 middleY ; 0 0 0 0 ; 0 0 0 1], color)
    end
end
immutable Rectangle <: Shape
    glContent::GLBuffer
    attributes::Array{Float32, 1}
    transformations::Matrix
    color::Array{Float32, 1}
    function Rectangle(x::Float32, y::Float32, width::Float32, height::Float32, color::Array{Float32,1})
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
        boundingBox[1] = boundingBox[1] 
        new(GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, polygon), boundingBox, eye(Float32, 4,4), color)
    end
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

function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = set_orthographic( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function moveY(event::MouseClicked)
	global model
	model[2,4] = model[2,4] + translateYMatrix(event.key == 4 ? -10f0 : 10f0)[2,4]
end
registerEvent(EventAction{MouseClicked}("", x-> x.key == 3 || x.key == 4, (), moveY, ()))

function toOpenGL(text::Array{String,1})

    words = Array(GLWordNode, 0)
    flattenedText = ""

    xAdvance = 0
    xShift = 0
    xIndex = 0
    lineAdvance = 0

    for word in text
        if word == "\n"
            lineAdvance += 1
            xShift = -xIndex
        else
            transform = eye(Float32, 4,4)
            transform[1,4] = xShift * font.advance
            transform[2,4] = 500 - (lineAdvance *  (font.lineHeight + 30))
            push!(words, GLWordNode(transform, get(juliaColorDict, word, [0f0,0f0,0f0]), (xIndex, length(word))))
            flattenedText   *= word
            xIndex          += length(word)
        end
    end
    verts   = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES,  createQuadStrip(0f0, 0f0, 0f0, font.advance, font.lineHeight, length(flattenedText)))
    uv      = GLBuffer(DYNAMIC_DRAW, ARRAY_BUFFER, LINE_STRIP,  mapreduce(
                theChar -> get(font.dictionary, theChar, zeros(GLfloat, 6*2)), 
                vcat, 
                flattenedText))

    vetexArrayID = glGenVertexArray()
    glBindVertexArray(vetexArrayID)
    glBindBuffer(ARRAY_BUFFER, verts.id)
    vertexLoc   = glGetAttribLocation(textShader.id, "position")
    glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)
    glBindBuffer(ARRAY_BUFFER, uv.id)
    uvLoc   = glGetAttribLocation(textShader.id, "uv")
    glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)
    glEnableVertexAttribArray(vertexLoc)
    glEnableVertexAttribArray(uvLoc)
    glBindVertexArray(0)

    vetexArrayID, words
end

function render(words::Array{GLWordNode, 1}, vetexArrayID::GLuint)
    glBindVertexArray(vetexArrayID)
    for word in words
        glUniformMatrix4fv(glGetUniformLocation(textShader.id, "mvp"),  1, FALSE, reshape(projMatrix * model * word.transform, 16))
        glUniform3f(glGetUniformLocation(textShader.id, "textColor"), word.color...)
        glDrawArrays(TRIANGLES, word.index[1] * 6, word.index[2] * 6)
    end
    glBindVertexArray(0)
end

function render(shape::Shape)
    global projMatrix, model, flatShader
    glUseProgram(flatShader.id)
    glUniformMatrix4fv(glGetUniformLocation(flatShader.id, "mvp"),  1, FALSE, reshape(projMatrix * model * shape.transformations, 16))
    glUniform4f(glGetUniformLocation(flatShader.id, "Color"), shape.color...)

    glEnableVertexAttribArray(glGetAttribLocation(flatShader.id, "position"))
    glBindBuffer(ARRAY_BUFFER, shape.glContent.id)
    glVertexAttribPointer(glGetAttribLocation(flatShader.id, "position"), 2, FLOAT, FALSE, 0, 0)
    glDrawArrays(shape.glContent.format, 0, shape.glContent.size)
end


function initUtils()
    glClearColor(1f0, 1f0, 1f0, 1.0f0)
    glEnable(DEPTH_TEST)
    glEnable(MULTISAMPLE)
    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    global flatShader = Program("dependencies/flatShader")
    global textShader = Program("dependencies/color") 
    global projMatrix = eye(GLfloat, 4,4)
    global viewMatrix = eye(GLfloat, 4,4)
    global model      = eye(GLfloat, 4,4)
    model[1,4] = 1
    model[2,4] = 1

    global CIRCLE = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, createCircle(1, 0, 0, 124))
    global RECTANGLE = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, createQuad(0f0,0f0, 1f0, 1f0)) 
end