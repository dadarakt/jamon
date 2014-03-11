module GLUtil
using OpenGL
import OpenGL.render, OpenGL.glGetAttribLocation
export GLProgram, readShader
export GLVertexArray, GLBuffer


immutable GLProgram
    id::GLuint
    fragShaderPath::ASCIIString
    vertShaderPath::ASCIIString
    function GLProgram(vertex_file_path::String, fragment_file_path::String)
        vertexShaderID::GLuint   = readShader(vertex_file_path,   GL_VERTEX_SHADER)
        fragmentShaderID::GLuint = readShader(fragment_file_path, GL_FRAGMENT_SHADER)
        p = glCreateProgram()
        glAttachShader(p, vertexShaderID)
        glAttachShader(p, fragmentShaderID)
        glLinkProgram(p)
        printProgramInfoLog(p)
        glDeleteShader(vertexShaderID)
        glDeleteShader(fragmentShaderID)
        return new(p, vertex_file_path, fragment_file_path)
    end
end
GLProgram(name::String) = GLProgram("$(name).vert", "$(name).frag")


function printShaderInfoLog(obj::GLuint)
    infologLength::Array{GLint, 1} = [0]
    charsWritten::Array{GLsizei, 1}  = [0]
    glGetShaderiv(obj, GL_INFO_LOG_LENGTH, infologLength)
    errorOccured = false
    if infologLength[1] > 1
        errorOccured = true
        println("~~~~~~~~~~~~~~ ShaderInfoLog ~~~~~~~~~~~~~~")
        infoLog = zeros(GLchar, infologLength[1])
        glGetShaderInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        infoLog = 0
    end
    return errorOccured
end
 
function printProgramInfoLog(obj::GLuint)
    infologLength::Array{GLint, 1} = [0]
    charsWritten::Array{GLsizei, 1}  = [0]
 
    glGetProgramiv(obj, GL_INFO_LOG_LENGTH, infologLength)
    errorOccured = false
    if infologLength[1] > 1
        errorOccured = true
        println("~~~~~~~~~~~~~~ ProgramInfoLog ~~~~~~~~~~~~~~")
        infoLog = zeros(GLchar, infologLength[1])
        glGetProgramInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        infoLog = 0
    end
    return errorOccured
end

function readShader(filePath::String, shaderType)
    shaderID::GLuint          = glCreateShader(shaderType)
    fileStream                = open(filePath)
    shaderCode::Ptr{GLchar}   = convert(Ptr{GLchar}, pointer(readbytes(fileStream)))
    close(fileStream)
    glShaderSource(shaderID, 1, convert(Ptr{Uint8}, pointer([shaderCode])), 0)
    glCompileShader(shaderID)
    printShaderInfoLog(shaderID)
    return shaderID
end

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
            attribLocation = glGetAttribLocation(program, attribute)
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

function glGetAttribLocation(program::GLProgram, name::ASCIIString)
    location = glGetAttribLocation(program.id, name)
    if location == -1 
        error("Named attribute(:$(name)) variable is not an active attribute in the specified program object or\n
            the name starts with the reserved prefix gl_\n")
    elseif location == GL_INVALID_OPERATION
        error("program is not a value generated by OpenGL or\n
                program is not a program object or\n
                program has not been successfully linked")
    end
    location
end

end #Module GLUtil


