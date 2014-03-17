global OpenGLver = "4.3"
using OpenGL
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
immutable GLBuffer
    id::GLuint
    usage::Uint16
    bufferType::Uint16
    format::Uint16
    size::Int32
    function GLBuffer(usage::Uint16, bufferType::Uint16, format::Uint16, buffer::Array{Float32, 1})
    	size = length(buffer)
    	@assert size > 0
    	id = glGenBuffer()
    	glBindBuffer(bufferType, id)
    	glBufferData(bufferType, sizeof(buffer), buffer, usage)
    	buffer = 0
    	glBindBuffer(bufferType, 0)
    	new(id, usage, bufferType, format, size)
    end
end

abstract Shape


function generateCircle(r, x, y, amount)
	slice = (2*pi) / amount
	result = float32([x,y])
	for i = 0:amount-1
		angle = slice * i
		push!(result, float32(x + r * cos(angle)), float32(y + r * sin(angle)))
	end
	push!(result, float32(x + r * cos(0)), float32(y + r * sin(0)))
	return result
end

immutable Circle <: Shape
	glContent::GLBuffer
	attributes::Array{Float32, 1}
	transformations::Matrix
	function Circle(radius::Float32, middleX::Float32, middleY::Float32)
		new(CIRCLE, [radius, middleX, middleY], [middleX 0 0 radius ; 0 middleY 0 radius ; 0 0 0 0 ; 0 0 0 1])
	end
end
immutable Rectangle <: Shape
	glContent::GLBuffer
	attributes::Array{Float32, 1}
	transformations::Matrix
	function Rectangle(x::Float32, y::Float32, width::Float32, height::Float32)
		new(RECTANGLE, [x, y, width, height], [width 0 0 x ; 0 height 0 y ; 0 0 0 0 ; 0 0 0 1])
	end
end
immutable Polygon <: Shape
	glContent::GLBuffer
	attributes::Array{Float32, 1}
	transformations::Matrix
	function Polygon(polygon::Array{Float32, 1})
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
		new(GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, polygon), boundingBox, eye(Float32, 4,4))
	end
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

global CIRCLE 		=  GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, generateCircle(1, 0, 0, 124))
global RECTANGLE 	=  GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, createQuad(0f0,0f0,1f0,1f0))

lol = Circle(1f0, 50f0, 20f0)
lol = Rectangle(1f0, 50f0, 20f0, 50f0)
lol = Polygon([1f0, 50f0, 20f0, 20f0])


