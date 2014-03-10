module GLText
require("OpenGL.jl")
require("GLTexture.jl")
using SOpenGL, GLTexture

export render

type AsciiAtlas
    lineHeight::GLfloat
    advance::GLfloat
    texture::Texture
    dictionary::Dict{Char, (Array{Float32, 1}, Float32)}
    textVertArray::GLuint

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
	    close(flStream)

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

	    AsciiAtlas(lineHeight, advance, texture, asciiDict, vetexArrayID)
	end
end

function render(char::Char, x::Float32, y::Float32)
    glUniformMatrix4fv(glGetUniformLocation(textShader.id, "mvp"),  1, FALSE, reshape(projMatrix * [1 0 0 x ; 0 1 0 y ; 0 0 1 0 ; 0 0 0 1], 16))
    glDrawArrays(TRIANGLES, int(char) * 6, (int(char) + 1) * 6)
end

render(text::String, x::FloatingPoint, y::FloatingPoint) = render(text, float32(x), float32(y), standartFont, float32([0,0,0,1]), zeros(Float32, 4))
function render(text::String, x::Float32, y::Float32, font::AsciiAtlas, 
	backgroundColor::Array{Float32,1}, textColor::Array{Float32,1})
    glEnable(DEPTH_TEST)
    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glUseProgram(textShader.id)
    glBindVertexArray(font.textVertArray)
    glActiveTexture(TEXTURE0)
    glBindTexture(TEXTURE_2D, font.texture.id)
    glUniform1i(glGetUniformLocation(textShader.id, "fontTexture"), 0)
    xStart = x
    for char in text
    	glUniform4f(glGetUniformLocation(textShader.id, "textColor"), textColor...) 
    	glUniform4f(glGetUniformLocation(textShader.id, "backgroundColor"), backgroundColor...) 
        if isblank(char) && backgroundColor[4] == 0
            x += font.advance
        else
            #if inside(delimiter, x, y)
                render(char, x, y)
            #end
            x += font.advance 
        end
         y -= font.lineHeight
         x = xStart
    end
    glBindVertexArray(0)
end

function initTextRendering()
    global textShader   = GLProgram("dependencies/textShader") 
    global standardFont = AsciiAtlas("dependencies/VeraMono")
end

end #module TextRendering
