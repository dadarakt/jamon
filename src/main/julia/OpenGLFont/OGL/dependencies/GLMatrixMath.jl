global OpenGLver = "4.3"
using OpenGL


function set_orthographic(
                        left::GLfloat,   right::GLfloat,
                       bottom::GLfloat, top::GLfloat,
                       znear::GLfloat,  zfar::GLfloat )

    @assert right  != left 
    @assert bottom != top  
    @assert znear  != zfar 

    matrix = zeros(GLfloat, 4, 4)

    matrix[1,1] = 2.0/(right-left);
    matrix[1,4] = -(right+left)/(right-left);
    matrix[2,2] = 2.0/(top-bottom);
    matrix[2,4] = -(top+bottom)/(top-bottom);
    matrix[3,3] = -2.0/(zfar-znear);
    matrix[3,4] = -(zfar+znear)/(zfar-znear);
    matrix[4,4] = 1.0;
    matrix
end

translateXMatrix(x::GLfloat) = translationMatrix( x, 0.0f0, 0.0f0)
translateYMatrix(y::GLfloat) = translationMatrix( 0.0f0, y, 0.0f0)
translateZMatrix(z::GLfloat) = translationMatrix( 0.0f0, 0.0f0, z)

function translationMatrix(x::GLfloat, y::GLfloat, z::GLfloat)

    result = eye(GLfloat, 4, 4)
    result[1,4] = x
    result[2,4] = y
    result[3,4] = z
    return result
end
function glReshape(a::Matrix)
    w,h = size(a)
    result = zeros(w*h)
    x = 1
    for i = 1:w
        for j = 1:h
            result[x] = a[i,j]
            x = x + 1
        end
    end
    result
end