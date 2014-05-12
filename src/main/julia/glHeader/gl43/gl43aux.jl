module OpenGL

import OpenGLStd.glEnable, OpenGLStd.glDisable

import Images.imread

export glimread

#Enabling lists of stuff.
type _GlEnable
    things::Vector
end

function glEnable(things::Vector)
    for thing in things
        glEnable(thing)
    end
    return _GlEnable(things)
end
glEnable(things...) = glEnable(things)

#Disabling lists of stuff
function glDisable(things::Vector)
    for thing in things
        glDisable(thing)
    end
end
glDisable(things...) = glDisable(things)

# Going with a basic OpenGL RGB 1D-interleaved image-texture
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

end
