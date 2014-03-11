import Images.imread

immutable Texture
    id::GLuint
    textureType::Uint16
    format::Uint16
    width::Int
    height::Int
    function Texture()
        new(uint32(0), uint16(0), uint16(0), 0, 0)
    end
    function Texture(path::ASCIIString; targetFormat::Uint16 = GL_RGB, textureType::Uint16 = GL_TEXTURE_2D, alpha::Float32 = 1f0)
        img = imread(path)
        @assert length(img.data) > 0

        imgFormat   = img.properties["colorspace"]
        #glTexImage2D needs to know the pixel data format from imread, the type and the targetFormat
        pixelDataFormat::Uint16 = 0
        imgType                 = eltype(img.data)
        glImgType::Uint16       = 0
        glImgData1D = imgType[]
        w = 0
        h = 0
        if imgFormat == "ARGB"
            pixelDataFormat = GL_RGBA
            glImgData1D = vec(permutedims(img.data, [2,3,1]))
            w = size(img, 2)
            h = size(img, 3)
    	elseif imgFormat == "RGB"
            pixelDataFormat = GL_RGB
            w = size(img, 2)
            h = size(img, 3)
            glImgData1D = reshape(img.data, w, h * 3)

		elseif imgFormat == "GRAY"
            pixelDataFormat = GL_ALPHA
            glImgData1D = img.data
            w = size(img, 1)
            h = size(img, 2)
		else 
			error("Color Format $(imgFormat) not supported")
		end
        if imgType == Uint8
            glImgType = GL_UNSIGNED_BYTE
        elseif imgType == Float32
            glImgType = GL_FLOAT
        elseif imgType == Int8
            glImgType = GL_BYTE
        else 
            error("Type: $(imgType) not supported")
        end
        @assert w > 0 && h > 0 && length(glImgData1D) > 0
	    id = glGenTextures()
	    glBindTexture(textureType, id)
	    glTexParameteri( textureType, GL_TEXTURE_WRAP_S,       GL_CLAMP_TO_EDGE )
	    glTexParameteri( textureType, GL_TEXTURE_WRAP_T,       GL_CLAMP_TO_EDGE )
	    glTexParameteri( textureType, GL_TEXTURE_MAG_FILTER,   GL_LINEAR )
	    glTexParameteri( textureType, GL_TEXTURE_MIN_FILTER,   GL_LINEAR )
	    glTexImage2D( textureType, 0,targetFormat  , w, h, 0, pixelDataFormat, glImgType, glImgData1D)
	    img = 0
	    new(id, textureType, targetFormat, w, h)
    end
end

function render(t::Texture, programID::GLuint, attribName::ASCIIString)
    glActiveTexture(GL_TEXTURE0)
    glBindTexture(t.textureType, t.id)
    glUniform1i(glGetUniformLocation(programID, attribName), 0)
end

export Texture  