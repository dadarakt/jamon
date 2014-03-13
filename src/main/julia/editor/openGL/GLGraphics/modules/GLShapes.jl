abstract Shape

immutable Circle{T <: Real} <: Shape
    x::T
    y::T
    r::T
    color::GLColor
    function Circle(radius::Float32, middleX::Float32, middleY::Float32, color::GLColor)
        new(middleX, middleY, radius, color)
    end
end

immutable Rectangle <: Shape
    x::Float32
    y::Float32
    w::Float32
    h::Float32
    color::GLColor
    texture::Texture
    function Rectangle(x::Float32, y::Float32, width::Float32, height::Float32, color::GLColor, texture::Texture)
        new(x, y, width, height, color, texture)
    end
end


Rectangle{T <: Real}(x::T, y::T, width::T, height::T) = Rectangle(float32(x), float32(y), float32(width), float32(height), GLColor(Float32[0,0,0,0]), Texture())

function Rectangle(texture::ASCIIString)
    t = Texture(texture)
    Rectangle(0f0, 0f0, float32(t.width), float32(t.height), GLColor([0,0,0,0]), t)
end

immutable Polygon{T} <: Shape
    boundingBox::Rectangle
    color::GLColor
    function Polygon(polygon::Array{T, 1}, color::GLColor)
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
        new(GLBuffer(GL_STATIC_DRAW, GL_ARRAY_BUFFER, GL_TRIANGLE_FAN, polygon), boundingBox, eye(Float32, 4,4), color)
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

function createQuad{T <: Real}(x::T, y::T, width::T, height::T)
    v = T[
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

function render(shape::Rectangle)
    glDisable(GL_DEPTH_TEST)

    glEnable(GL_BLEND)
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)

    glUseProgram(RECTANGLE_VERT_ARRAY.program.id)
    if shape.texture.id > 0
        glUniform1f(glGetUniformLocation(RECTANGLE_VERT_ARRAY.program.id, "textureOn"), 1.0f0)
        render(shape.texture, RECTANGLE_VERT_ARRAY.program.id, "Texture")
    else
        glBindTexture(GL_TEXTURE_2D, 0)
        glUniform1f(glGetUniformLocation(RECTANGLE_VERT_ARRAY.program.id, "textureOn"), 0.0f0)
    end
    glUniformMatrix4fv(
        glGetUniformLocation(RECTANGLE_VERT_ARRAY.program.id, "mvp"),  1, GL_FALSE, 
        vec(orthographicProj * float32([shape.w 0 0 shape.x ; 0 shape.h 0 shape.y ; 0 0 1 0 ; 0 0 0 1])))
    glUniform4f(glGetUniformLocation(RECTANGLE_VERT_ARRAY.program.id, "Color"), shape.color.rgba...) 
    render(RECTANGLE_VERT_ARRAY)
end

flatShader              = GLProgram(shaderDirectory*"flatShader")
RECTANGLE_VERT_ARRAY    = GLVertexArray(["position" => createQuad(0f0, 0f0, 1f0, 1f0), "uv" => createQuadUV()], flatShader, primitiveMode = GL_TRIANGLES)

export Circle, Rectangle, Polygon, inside, createQuad, createUV, createCircle, createQuadStrip, render, initGLShapes
