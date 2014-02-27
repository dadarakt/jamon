type GLGlyphUV
    uv::Array{GLfloat,1}
end

type AsciiAtlas
	lineHeight::GLfloat
	advance::GLfloat
	textureID::GLuint
	dictionary::Dict{Char, GLGlyphUV}
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