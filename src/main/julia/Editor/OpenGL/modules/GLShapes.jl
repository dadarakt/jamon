module GLShapes
require("modules/GLColor.jl")
abstract Shape


immutable Circle{T <: Real} <: Shape
    x::T
    y::T
    r::T
    color::Color
    function Circle(radius::Float32, middleX::Float32, middleY::Float32, color::Color)
        new(middleX, middleY, radius, color)
    end
end

immutable Rectangle{T} <: Shape
    x::T
    y::T
    w::T
    h::T
    color::Color
    function Rectangle(x::T, y::T, width::T, height::T, color::Color)
        new(x, y, width, height, color)
    end
end

immutable Polygon{T} <: Shape
	glContent::GLBuffer
    boundingBox::Rectangle{T}
    transformations::Matrix{T}
    color::Color{Float32}
    function Polygon(polygon::Array{T, 1}, color::Color)
        @assert length(polygon) % 2 == 0
        boundingBox = Rectangle(-Inf32, -Inf32, Inf32, Inf32)
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
        new(GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLE_FAN, polygon), boundingBox, eye(Float32, 4,4), color)
    end
end




function inside(polygon::Polygon, x::Real, y::Real)
    a = polygon.points
    c = false
    i = length(a) - 1
    for (x1, y1) in a
        (x0, y0) =  a[i % length(a) + 1]
        if (y1 < y) != (y0 > y) &&
            (x < (x0-x1) * (y-y1) / (y0-y1) + x1)
            c = ~c
        end 
        i += 1
    end
    return c
end
function inside(circle::Circle, x::Real, y::Real)
    xD = abs(circle.x - x) - circle.r 
    yD = abs(circle.y - y) - circle.r
    xD <= 0 && yD <= 0
end
function inside(rect::Rectangle, x::Real, y::Real)
    rect.x <= x && rect.y <= y && rect.x + rect.w >= x && rect.y + rect.h >= y 
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
function createCircle(r, x, y, amount)
    slice = (2*pi) / amount
    result = float32([x,y])
    for i = 0:amount-1
        angle = slice * i
        push!(result, float32(x + r * cos(angle)), float32(y + r * sin(angle)))
    end
    push!(result, float32(x + r * cos(0)), float32(y + r * sin(0)))
    return result
end
function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*2 + 1:i*6*2] = vTemp
    end
    return vertices
end
function render(shape::Shape)
    global projMatrix, model, flatShader
    glDisable(DEPTH_TEST)
    glUseProgram(flatShader.id)
    glUniformMatrix4fv(glGetUniformLocation(flatShader.id, "mvp"),  1, FALSE, reshape(projMatrix * model * shape.transformations, 16))
    glUniform4f(glGetUniformLocation(flatShader.id, "Color"), shape.color...)

    glEnableVertexAttribArray(glGetAttribLocation(flatShader.id, "position"))
    glBindBuffer(ARRAY_BUFFER, shape.glContent.id)
    glVertexAttribPointer(glGetAttribLocation(flatShader.id, "position"), 2, FLOAT, FALSE, 0, 0)
    glDrawArrays(shape.glContent.format, 0, shape.glContent.size)
    glBindBuffer(ARRAY_BUFFER, 0)
end


end