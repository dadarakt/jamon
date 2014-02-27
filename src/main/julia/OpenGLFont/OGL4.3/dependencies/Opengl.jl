type GLBuffer {T<:Number}
    invalidated::Bool
    id::GLuint
    usage::Uint16
    bufferType::Uint16
    buffer::Array{T, 1}
end

type UVVBO
    invalidated::Bool
    vertexArrayID::GLuint
    vertexBuffer::GLBuffer{GLfloat}
    uvBuffer::GLBuffer{GLfloat}
    textureID::GLuint
end

type Texture2D
    id::GLuint
    imageData::Array{Uint8, 1}
end

function createQuad(x::GLfloat, y::GLfloat, width::GLfloat, height::GLfloat)
    [
    x        , y,
    x        , y + height,
    x + width, y,
    x + width, y,
    x        , y + height,
    x + width, y + height]
end

function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*2 + 1:i*6*2] = vTemp
    end
    return vertices
end



function glGetVariable(variable::Uint16)
    result::Ptr{GLint} = int32([-1])
    glGetIntegerv(uint32(variable), result)
    unsafe_load(result)
end

function glGenBuffer()
    result::Ptr{GLuint} = uint32([0])
    glGenBuffers(1, result)
    unsafe_load(result)
end

function glGenVertexArray()
    result::Ptr{GLuint} = uint32([0])
    glGenVertexArrays(1, result)
    unsafe_load(result)
end

function toVideoMemory(buffer::GLBuffer{GLfloat})
    if buffer.invalidated

        if buffer.id == 0
            buffer.id = glGenBuffer()
        end
        currentARRAY_BUFFER = glGetVariable(ARRAY_BUFFER_BINDING)
        if buffer.id != currentARRAY_BUFFER
            glBindBuffer(buffer.bufferType, buffer.id)
        end
        glBufferData(buffer.bufferType, sizeof(buffer.buffer), buffer.buffer, buffer.usage)
    end 
end


function toVideoMemory(vbo::UVVBO)
    if vbo.invalidated
        currentPROGRAM = glGetVariable(CURRENT_PROGRAM)

        currentTEXTURE = glGetVariable(ACTIVE_TEXTURE)
        if vbo.textureID != currentTEXTURE
            glActiveTexture(TEXTURE0)
            glBindTexture(TEXTURE_2D, vbo.textureID)
            glUniform1i(glGetAttribLocation(currentPROGRAM, "myTexture"), 0)
        end
        if vbo.vertexArrayID == 0
            vbo.vertexArrayID = glGenVertexArray()
        end
        currentVERTEX_ARRAY = glGetVariable(VERTEX_ARRAY_BINDING)

        if vbo.vertexArrayID != currentVERTEX_ARRAY
            glBindVertexArray(vbo.vertexArrayID)
        end

        vertexLoc::GLuint = glGetAttribLocation(currentPROGRAM, "position")
        toVideoMemory(vbo.vertexBuffer)
        glEnableVertexAttribArray(vertexLoc)
        glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)

        uvLoc::GLuint = glGetAttribLocation(currentPROGRAM, "uv")
        toVideoMemory(vbo.uvBuffer)
        glEnableVertexAttribArray(uvLoc)
        glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)
    end
end

function invalidate!(a::Any)
    for elem in a
        if isa(elem, AbstractArray)
            invalidate!(elem)
        else
            elem.invalidated = false
        end
    end
end


function render(t::TextField)
    if t.invalidated && length(t.lines) > 0
        @assert length(t.styles) > 0
        
        render(t.boundingBox)
        for style in t.styles
            render(style)
            render(t.lines, style.start[1], style.start[2], style.ending[1], style.ending[2])
        end
    end
end

function render(lines::Array{TextFieldLine, 1}, startLine::Uint, startCell::Uint, endLine::Uint, endCell::Uint)
    if startLine == endLine
        render(lines[startLine], uint32(startCell), uint32(endCell - startCell))
    else
        render(lines[endLine], uint32(0), uint32(endCell))
    end
    if startLine + 1 < endLine - 1
        for i = (startLine + 1) : (endLine - 1)
            render(lines[i], uint32(0), uint32(size2(lines[i])))
        end
    end
    
end

function render(t::Style)
    glUniform3f(glGetUniformLocation(p, "customColor"), t.color...)
end

render(t::TextFieldLine, start::Uint32, ending::Uint32) = render(t.line, start, ending)


function render(uvVBO::UVVBO, start::GLuint, ending::GLuint)
    toVideoMemory(uvVBO)
    glDrawArrays(TRIANGLES, start * 6, ending * 6 )
end

function render(b::Box2D{GLfloat})
    glClearColor(b.backGroundColor..., 1.0f0)
    glScissor(b.x, b.y, b.width, b.height)
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)    
end




