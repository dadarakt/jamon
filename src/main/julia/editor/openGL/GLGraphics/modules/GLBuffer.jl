immutable GLBuffer
    id::GLuint
    usage::Uint16
    bufferType::Uint16
    format::Int
    size::Int
    function GLBuffer(buffer::Array{Float32, 1}, format::Int, bufferType::Uint16 = GL_ARRAY_BUFFER, usage::Uint16 = GL_STATIC_DRAW)
        @assert format == 1 || format == 2 || format == 3 || format == 4
        size = length(buffer)
        @assert size % format == 0
        id = glGenBuffers()
        glBindBuffer(bufferType, id)
        glBufferData(bufferType, sizeof(buffer), buffer, usage)
        buffer = 0
        glBindBuffer(bufferType, 0)
        new(id, usage, bufferType, format, div(size, format))
    end
end

immutable GLVertexArray
    program::GLProgram
    id::GLuint
    size::Int
    primitiveMode::Uint16
    #Buffer dict 
    function GLVertexArray(bufferDict::Dict{ASCIIString, GLBuffer}, program::GLProgram, primitiveMode::Uint16)
        @assert !isempty(bufferDict)
        size = get(bufferDict, collect(keys(bufferDict))[1], 0).size
        id = glGenVertexArrays()
        glBindVertexArray(id)        
        for elem in bufferDict
            attribute   = elem[1]
            buffer      = elem[2]
            @assert size == buffer.size
            glBindBuffer(buffer.bufferType, buffer.id)
            attribLocation = glGetAttribLocation(program.id, attribute)
            glVertexAttribPointer(attribLocation, buffer.format, GL_FLOAT, GL_FALSE, 0, 0)
            glEnableVertexAttribArray(attribLocation)
        end
        glBindVertexArray(0)        
        new(program, id, size, primitiveMode)
    end
end

function GLVertexArray(bufferDict::Dict{ASCIIString, Array{Float32, 1}}, program::GLProgram; primitiveMode::Uint16 = GL_POINTS, format::Int = 2)
    glbuffDict = Dict{ASCIIString, GLBuffer}()
    for elem in bufferDict
        glbuffDict[elem[1]] = GLBuffer(elem[2], format)
    end
    GLVertexArray(glbuffDict, program, primitiveMode)
end

function render(vertArray::GLVertexArray)
    glBindVertexArray(vertArray.id)        
    glDrawArrays(vertArray.primitiveMode, 0, vertArray.size)
end

export GLVertexArray, GLBuffer
