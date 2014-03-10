module GLTexture

require("OpenGL.jl")
using SOpenGL
import Images.imread
export Texture     
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

function render(t::Texture)
    glActiveTexture(TEXTURE0)
    glBindTexture(TEXTURE_2D, t.id)
    glUniform1i(glGetUniformLocation(textShader.id, "fontTexture"), 0)
end


end #module GLTexture