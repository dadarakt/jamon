
include("dependencies/GLUTWindow.jl")
include("dependencies/GLMatrixMath.jl")
include("dependencies/shader.jl")

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
    	@assert size > 0
    	_id = glGenBuffer()

    	glBindBuffer(bufferType, _id)
    	glBufferData(bufferType, sizeof(buffer), buffer, usage)
    	buffer = 0
    	glBindBuffer(bufferType, 0)
    	println("here: $(_id)")
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

function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*2 + 1:i*6*2] = vTemp
    end
    return vertices
end

global projMatrix = eye(GLfloat, 4,4)
global viewMatrix = eye(GLfloat, 4,4)
global model 	  = eye(GLfloat, 4,4)


function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = set_orthographic( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

global cursor = 0



function displayFuncCallback()
	global projMatrix, cursor, model, RECTANGLE,RECT_ID

    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)
    glUseProgram(p.id)

    glBindVertexArray(RECT_ID)
    glUniformMatrix4fv(glGetUniformLocation(p.id, "mvp"),  1, FALSE, reshape(projMatrix * model, 16))
	glUniform4f(glGetUniformLocation(p.id, "myColor"), 1f0, 0f0, 0f0, 1f0)
	glDrawArrays(TRIANGLES, 0, RECTANGLE.size)

    return nothing
end

function editBuffer(event::MouseMoved, buffer::GLBuffer)
	global cursor
	a = [float32(event.x), float32(500 - event.y)]
	glBindBuffer(buffer.bufferType, buffer.id)
	glBufferSubData(buffer.bufferType, (cursor % buffer.size) * sizeof(Float32), sizeof(a), a)

	cursor += 1
end

function moveY(event::MouseClicked)
	global model
	model[2,4] = model[2,4] + translateYMatrix(event.key == 4 ? -10f0 : 10f0)[2,4]
end


function printText(event::KeyDown, textBuffer::GLBuffer, atlas::AsciiAtlas)
	global cursor
	a = atlas.dictionary[event.key]
	glBindBuffer(textBuffer.bufferType, textBuffer.id)
	glBufferSubData(textBuffer.bufferType, (cursor % textBuffer.size) * sizeof(Float32) * 6 * 2, sizeof(a), a)
	cursor += 1
end

createWindow(name = "Moiiin", windowSize = [500, 500], windowPosition = [1950, 20])
linkFunctions()
glEnable(DEPTH_TEST)
glEnable(MULTISAMPLE)
glClearColor(0.9f0, 0.9f0, 0.9f0, 1.0f0)



p  		= Program("dependencies/flatShader")
font 	= AsciiAtlas("dependencies/VeraMono")

verts 	= GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES,  createQuadStrip(0f0, 0f0, 0f0, font.advance, font.lineHeight, 400))
uv 		= GLBuffer(DYNAMIC_DRAW, ARRAY_BUFFER, LINE_STRIP,  mapreduce(
			theChar -> get(font.dictionary, theChar, zeros(GLfloat, 6*2)), 
			vcat, 
			" "^(400)))

vetexArrayID = glGenVertexArray()
glBindVertexArray(vetexArrayID)

glBindBuffer(ARRAY_BUFFER, verts.id)
vertexLoc 	= glGetAttribLocation(p.id, "position")

glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)

glBindBuffer(ARRAY_BUFFER, uv.id)
uvLoc 	= glGetAttribLocation(p.id, "uv")

glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)

glEnableVertexAttribArray(vertexLoc)
glEnableVertexAttribArray(uvLoc)

glBindVertexArray(0)

#registerEvent(EventAction{MouseMoved}("", x-> true, (), editBuffer, (buffer,)))
registerEvent(EventAction{MouseClicked}("", x-> x.key == 3 || x.key == 4, (), moveY, ()))

registerEvent(EventAction{KeyDown}("", x->isprint(x.key), (), printText, (uv, font,)))

global RECTANGLE = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, createQuad(0f0,0f0,400f0,400f0))

global RECT_ID = glGenVertexArray()
glBindVertexArray(RECT_ID)
glBindBuffer(ARRAY_BUFFER, RECTANGLE.id)
vertexLoc   = glGetAttribLocation(p.id, "position")
glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)
glEnableVertexAttribArray(vertexLoc)
glBindVertexArray(0)


glutMainLoop()