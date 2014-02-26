global OpenGLver = "3.3"
using OpenGL, PatternDispatch, Match
include("shader.jl")





type RenderTask
	time::(Float, Float)
	zdepth::Float
	task::function
	arguments::Tuple
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

function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*2 + 1:i*6*2] = vTemp
    end
    return vertices
end


type Style
	start::Array{Uint, 1}
	ending::Array{Uint, 1}
	color::Array{GLfloat, 1}
end

function Style(start::Array{Int64, 1}, ending::Array{Int64, 1}, color::Array{Float32, 1})
	@assert length(start) == 2
	@assert length(ending) == 2
	@assert length(color) == 3
	for startElem in start
		 @assert startElem >= 0
	end
	for endElem in ending
		 @assert endElem > 0
	end
	Style(uint(start), uint(ending), float32(color))
end
Style() = Style(uint([0,0]), uint([9999999,9999999]), float32([0,0,0]))

type GLBuffer {T<:Number}
	invalidated::Bool
	id::GLuint
	usage::Uint16
	bufferType::Uint16
	buffer::Array{T, 1}
end

type UVVBO
	invalidated::Bool
	vertexArrayID::GLuint
	vertexBuffer::GLBuffer{GLfloat}
	uvBuffer::GLBuffer{GLfloat}
	textureID::GLuint
end

type GLGlyphUV
    uv::Array{GLfloat,1}
end

type AsciiAtlas
	lineHeight::GLfloat
	advance::GLfloat
	textureID::GLuint
	dictionary::Dict{Char, GLGlyphUV}
end

type Box2D{T <: Real}
	x::T
	y::T
	width::T
	height::T

	vertexBuffer::GLBuffer{GLfloat}
    backGroundColor::Array{GLfloat, 1}
end

type TextFieldLine
	invalidated::Bool
	boundingBox::Box2D{GLfloat}

	cells::Int
	line::UVVBO
	function TextFieldLine(	
		invalidated::Bool,
		boundingRect::Box2D{GLfloat},
		cells::Int,
		vbo::UVVBO)
		new(true, boundingRect, cells, vbo)
	end
end

type TextField
	invalidated::Bool
	boundingBox::Box2D{GLfloat}

	dictionary::AsciiAtlas
    lines::Array{TextFieldLine, 1}
    lineGap::GLfloat
    styles::Array{Style, 1}
end

GLBuffer(buffer::Array{GLfloat,1}, usage::Uint16) = GLBuffer{GLfloat}(true, uint32(0), usage, ARRAY_BUFFER, buffer)
UVVBO(vb::Array{GLfloat,1}, uv::Array{GLfloat,1}, textureID::GLuint) = UVVBO(true, uint32(0), GLBuffer(vb, STATIC_DRAW), GLBuffer(uv, DYNAMIC_DRAW), textureID)
size2(a::UVVBO) = uint32(div(length(a.vertexBuffer.buffer), 6*2))
size2(t::TextFieldLine) = size2(t.line)


function TextFieldLine(text::Array{Char, 1}, x::GLfloat, y::GLfloat, lineLength::Int, asciiAtlas::AsciiAtlas) 
	TextFieldLine(
	true, 
	Box2D{GLfloat}(x,y, asciiAtlas.advance * lineLength, asciiAtlas.lineHeight),
	lineLength,
	UVVBO(
		createQuadStrip(x, y, 0f0, asciiAtlas.advance, asciiAtlas.lineHeight, lineLength),
		mapreduce(
			theChar -> get(asciiAtlas.dictionary, theChar, GLGlyphUV(zeros(GLfloat, 6*2))).uv, 
			vcat, 
			text), 
		asciiAtlas.textureID))
end

function TextField(text::String, x::GLfloat, y::GLfloat, lineLength::Int, lineGap::GLfloat, asciiAtlas::AsciiAtlas, backGroundColor::Array{GLfloat, 1})
	textLines, styles = process(text, lineLength)
	
	TextField(
		true, 
		Box2D{GLfloat}(x, 1000-y, asciiAtlas.advance * lineLength, (asciiAtlas.lineHeight + lineGap) * size(textLines,1)),
		asciiAtlas,
		[TextFieldLine(reshape(textLines[i, 1:end], lineLength), x, float32(y - i*lineGap), lineLength, asciiAtlas) for i = 1 : size(textLines,1) ],
		lineGap,
		styles,
		backGroundColor)
end


function glGetVariable(variable::Uint16)

	result::Ptr{GLint} = int32([-1])
	glGetIntegerv(uint32(variable), result)
	unsafe_load(result, 1)
end


function glGenBuffer()
	result::Ptr{GLuint} = uint32([-1])
	glGenBuffers(1, result)
	unsafe_load(result, 1)
end

function glGenVertexArray()
	result::Ptr{GLuint} = uint32([-1])
	glGenVertexArrays(1, result)
	unsafe_load(result, 1)
end

function toVideoMemory(buffer::GLBuffer{GLfloat})
	if buffer.invalidated
		if buffer.id == 0
		    buffer.id = glGenBuffer()
		end
		currentARRAY_BUFFER = glGetVariable(ARRAY_BUFFER_BINDING)
		if buffer.id != currentARRAY_BUFFER
			glBindBuffer(buffer.bufferType, buffer.id)
		end
	    glBufferData(buffer.bufferType, sizeof(buffer.buffer), buffer.buffer, buffer.usage)
	end	
end


function toVideoMemory(vbo::UVVBO)
	if vbo.invalidated
		currentPROGRAM = glGetVariable(CURRENT_PROGRAM)

		currentTEXTURE = glGetVariable(ACTIVE_TEXTURE)
		if vbo.textureID != currentTEXTURE
			glActiveTexture(TEXTURE0)
    		glBindTexture(TEXTURE_2D, vbo.textureID)
    		glUniform1i(glGetAttribLocation(currentPROGRAM, "myTexture"), 0)
		end
		if vbo.vertexArrayID == 0
		    vbo.vertexArrayID = glGenVertexArray()
		end
		currentVERTEX_ARRAY = glGetVariable(VERTEX_ARRAY_BINDING)

		if vbo.vertexArrayID != currentVERTEX_ARRAY
			glBindVertexArray(vbo.vertexArrayID)
		end

		vertexLoc::GLuint = glGetAttribLocation(currentPROGRAM, "position")
		toVideoMemory(vbo.vertexBuffer)
		glEnableVertexAttribArray(vertexLoc)
		glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)

		uvLoc::GLuint = glGetAttribLocation(currentPROGRAM, "uv")
		toVideoMemory(vbo.uvBuffer)
		glEnableVertexAttribArray(uvLoc)
		glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)
	end
end

function invalidate!(a::Any)
	for elem in a
		if isa(elem, AbstractArray)
			invalidate!(elem)
		else
			elem.invalidated = false
		end
	end
end


function render(t::TextField)
	if t.invalidated && length(t.lines) > 0
		@assert length(t.styles) > 0
		
		render(t.boundingBox)
		for style in t.styles
			render(style)
			render(t.lines, style.start[1], style.start[2], style.ending[1], style.ending[2])
		end
	end
end

function render(lines::Array{TextFieldLine, 1}, startLine::Uint, startCell::Uint, endLine::Uint, endCell::Uint)
	if startLine == endLine
		render(lines[startLine], uint32(startCell), uint32(endCell - startCell))
	else
		render(lines[endLine], uint32(0), uint32(endCell))
	end
	if startLine + 1 < endLine - 1
		for i = (startLine + 1) : (endLine - 1)
			render(lines[i], uint32(0), uint32(size2(lines[i])))
		end
	end
	
end

function render(t::Style)
	glUniform3f(glGetUniformLocation(p, "customColor"), t.color...)
end

render(t::TextFieldLine, start::Uint32, ending::Uint32) = render(t.line, start, ending)


function render(uvVBO::UVVBO, start::GLuint, ending::GLuint)
	toVideoMemory(uvVBO)
	glDrawArrays(TRIANGLES, start * 6, ending * 6 )
end

function render(b::Box2D{GLfloat})
	glClearColor(b.backGroundColor..., 1.0f0)
	glScissor(b.x, b.y, b.width, b.height)
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)	
end

function AsciiAtlas(name::String)
    id          		= loadImage("$(name).bmp")
    flStream    		= open("$(name).txt")
    width      		 	= int(readline(flStream))
    height      		= int(readline(flStream))
    lineHeight::Float32 = int(readline(flStream))

    asciiDict = Dict{Char, GLGlyphUV}()
    advance::Float32 = 0
    for line in eachline(flStream) 
        values          		= split(line)
        charCode        		= char(int(values[1]))
        advance  				= int(values[2])
        x::Float32      		= int(values[3]) / width
        x2::Float32     		= (int(values[3]) + advance) / width
        y::Float32      		= int(values[4]) / height
        texLineHeight::Float32 	= lineHeight / height

        uv = [
            x, y + texLineHeight,
            x, y , 
            x2, y + texLineHeight, 
            x2, y+ texLineHeight,
            x, y ,
            x2, y]
           
        asciiDict[charCode] = GLGlyphUV(uv)
    end
    AsciiAtlas(lineHeight, advance, id, asciiDict)
end

function matchKeywords(keyWords::Array{ASCIIString,1}, matched::Array{Int,1}, character::Char)
	@assert length(keyWords) == length(matched)
	somethingMatched = false
	for i=1:length(keyWords)
		if keyWords[i][matched[i]] == character
			if length(keyWords[i]) == matched[i]
				fill!(matched, 1)
				return keyWords[i]
			else
				matched[i] = matched[i] + 1
				somethingMatched = true
			end
		end
	end
	if !somethingMatched
		fill!(matched, 1)
	end
	return ""
end

function process(text::String, lineLength::Int)
	juliaKeywords = ["\n", "for ", "if ", "end ", "begin ", "include(", "using ", "global ", "function ", "::", ",", "=", "\"", "\'", "in ", ":", "%", "(", ")", "?", "/", "+", "!", "|", "&", "\$"]
	juliaColorDict = [
		"for " 		=> [0.5f0, 0.8f0, 0.3f0], 
		"if " 		=> [0.2f0, 0.8f0, 0.5f0], 
		"end " 		=> [0.5f0, 0.1f0, 0.3f0], 
		"in " 		=> [0.0f0, 0.1f0, 0.5f0], 
		"begin " 	=> [0.5f0, 0.1f0, 0.3f0], 
		"in " 		=> [0.0f0, 0.1f0, 0.5f0],
		"\$" 		=> [0.9f0, 0.2f0, 0.01f0],
		"function " => [0.6f0, 0.3f0, 0.2f0],
		"include(" => [0.1f0, 0.9f0, 0.2f0],
		"using " => [0.2f0, 0.9f0, 0.2f0],
		"global " => [0.8f0, 0.1f0, 0.2f0],
		"\"" 		=> [0.9f0, 0.1f0, 0.1f0]]

	matched = ones(Int, length(juliaKeywords))

	textProcessed = Array(Array{Char,1}, 0)
	line = Array(Char, lineLength)
	fill!(line, ' ')

	styles = Array(Style, 0)
	cellIndex = 1
	lineIndex = 1
	elemCount = 1
	currentStyle = Style()
	for elem in text
		result = matchKeywords(juliaKeywords, matched, elem)
		if result == "\n" || (cellIndex % lineLength == 0)

			lineIndex = lineIndex + 1
			push!(textProcessed, deepcopy(line))
			fill!(line, ' ')
			fill!(matched, 1)
			cellIndex = 1
		elseif length(result) > 0 && !isblank(result)
			
			startLine 	= lineIndex
			startCell 	= cellIndex - length(result)
			endCell 	= cellIndex 
			endLine 	= lineIndex
			if startCell < 0
				startLine = startLine - 1
				endCell = cellIndex
				startCell = lineLength + startCell
			end
			if currentStyle.start != uint([startLine, startCell])
				currentStyle.ending = uint([startLine, startCell])
				push!(styles, deepcopy(currentStyle))
			end
			currentStyle.start = uint([endLine, endCell])
			push!(
				styles, 
				Style(
					[startLine, startCell], [endLine, endCell], 
					get(juliaColorDict, result, [0f0,0f0,0f0])))
		end
		if isascii(elem) && !iscntrl(elem)
			line[cellIndex] = char(elem)
			cellIndex = cellIndex + 1
		end 
		elemCount = elemCount + 1
	end
	result = Array(Char, size(textProcessed,1), lineLength)
	line = 1
	for elem in textProcessed
		result[line, 1:end] = elem
		line = line + 1
	end
	
	result, styles
end