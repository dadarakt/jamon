module GLTexture
require("modules/GLShapes.jl")
using OpenGL, GLShapes

import Images.imread
export Texture     

function glimreadGray(filename::String)
    img = imread(filename)
    w = size(img,1)
    h = size(img,2)
    return img.data, w, h
end
function glimread(filename::String)
    img = imread(filename)
    w = size(img,2)
    h = size(img,3)
    img1D = Array(Uint8,w*h*3)
    for j=1:w
        for k=1:h
            for i=1:3
                img1D[3*w*(j-1)+3*(k-1)+i] = img[i,w-j+1,k]
            end
        end
    end
    println(count)
    println(length(img1D))
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
	    id = glGenTextures()
	    glBindTexture(textureType, id)
	    glTexParameteri( textureType, TEXTURE_WRAP_S, CLAMP_TO_EDGE )
	    glTexParameteri( textureType, TEXTURE_WRAP_T, CLAMP_TO_EDGE )
	    glTexParameteri( textureType, TEXTURE_MAG_FILTER, LINEAR )
	    glTexParameteri( textureType, TEXTURE_MIN_FILTER, LINEAR )
	    glTexImage2D( textureType, 0, format, w, h, 0, format, UNSIGNED_BYTE, img)
	    img = 0
	    new(id, textureType, format, w, h)
    end
end



end #module GLTexture