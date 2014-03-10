immutable GLBuffer
    id::GLuint
    usage::Uint16
    bufferType::Uint16
    format::Uint16
    size::Int32
    function GLBuffer(usage::Uint16, bufferType::Uint16, format::Uint16, buffer::Array{Float32, 1})
        size = length(buffer)
        _id = glGenBuffers()

        glBindBuffer(bufferType, _id)
        glBufferData(bufferType, sizeof(buffer), buffer, usage)
        buffer = 0
        glBindBuffer(bufferType, 0)
        new(_id, usage, bufferType, format, size)
    end
end
export GLBuffer

function glGetIntegerv(variable::Uint16)
    result::Ptr{GLint} = int32([-1])
    glGetIntegerv(uint32(variable), result)
    unsafe_load(result)
end
function glGenBuffers()
    result::Ptr{GLuint} = uint32([0])
    glGenBuffers(1, result)
    unsafe_load(result)
end
function glGenVertexArrays()
    result::Ptr{GLuint} = uint32([0])
    glGenVertexArrays(1, result)
    unsafe_load(result, 1)
end
function glGenTextures()
    result::Ptr{GLuint} = uint32([0])
    glGenTextures(uint64(1), result)
    unsafe_load(result, 1)
end
