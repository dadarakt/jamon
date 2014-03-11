

computeFOVProjection(fov::GLfloat, aspect::GLfloat, nearDist::GLfloat, farDist::GLfloat) = computeFOVProjection!(zeros(GLfloat, 4, 4), fov, aspect, nearDist, farDist)

function computeFOVProjection!(result::Matrix, fov::GLfloat, aspect::GLfloat, nearDist::GLfloat, farDist::GLfloat)
   # @assert fov > 0 && aspect != 0 

    fill!(result, 0f0)
    frustumDepth = farDist - nearDist
    oneOverDepth = 1 / frustumDepth

    result[2,2] = 1f0 / tan(0.5f0 * fov)
    result[1,1] = 1f0 * result[2,2] / aspect
    result[3,3] = farDist * oneOverDepth
    result[4,3] = (-farDist * nearDist) * oneOverDepth
    result[3,4] = 1
    result[4,4] = 0
    result
end
computeOrthographicProjection(
                        left::GLfloat,   right::GLfloat,
                        bottom::GLfloat, top::GLfloat,
                        znear::GLfloat,  zfar::GLfloat) = computeOrthographicProjection!(zeros(GLfloat, 4, 4), left, right, bottom, top, znear,  zfar)

function computeOrthographicProjection!(
                        matrix::Matrix,
                        left::GLfloat,   right::GLfloat,
                       bottom::GLfloat, top::GLfloat,
                       znear::GLfloat,  zfar::GLfloat)

    @assert right  != left 
    @assert bottom != top  
    @assert znear  != zfar 

    fill!(matrix, 0f0)

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

function translationMatrix(translation::Array{GLfloat,1})
    result      = eye(GLfloat, 4, 4)
    result[1:3,4] = translation
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
export computeFOVProjection, computeFOVProjection!, computeOrthographicProjection, computeOrthographicProjection!, translateXMatrix, translationMatrix
