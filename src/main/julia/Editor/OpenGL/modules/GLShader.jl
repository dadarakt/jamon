module GLShader

using OpenGL

export GLProgram, readShader

immutable GLProgram
    id::GLuint
    fragShaderPath::ASCIIString
    vertShaderPath::ASCIIString
    function GLProgram(vertex_file_path::String, fragment_file_path::String)
        vertexShaderID::GLuint   = readShader(vertex_file_path,   VERTEX_SHADER)
        fragmentShaderID::GLuint = readShader(fragment_file_path, FRAGMENT_SHADER)
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
    glGetShaderiv(obj, INFO_LOG_LENGTH, infologLength)
    errorOccured = false
    if infologLength[1] > 1
        errorOccured = true
        println("~~~~~~~~~~~~~~ ShaderInfoLog ~~~~~~~~~~~~~~")
        infoLog = zeros(GLchar, infologLength[1])
        glGetShaderInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        infoLog = 0
    end
    return errorOccured
end
 
function printProgramInfoLog(obj::GLuint)
    infologLength::Array{GLint, 1} = [0]
    charsWritten::Array{GLsizei, 1}  = [0]
 
    glGetProgramiv(obj, INFO_LOG_LENGTH, infologLength)
    errorOccured = false
    if infologLength[1] > 1
        errorOccured = true
        println("~~~~~~~~~~~~~~ ProgramInfoLog ~~~~~~~~~~~~~~")
        infoLog = zeros(GLchar, infologLength[1])
        glGetProgramInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        infoLog = 0
    end
    return errorOccured
end

function readShader(filePath::String, shaderType)
    shaderID::GLuint          = glCreateShader(shaderType)
    fileStream                = open(filePath)
    shaderCode::Ptr{GLchar}   = readbytes(fileStream)
    close(fileStream)
    glShaderSource(shaderID, 1, [shaderCode], 0)
    glCompileShader(shaderID)
    printShaderInfoLog(shaderID)
    return shaderID
end

end # module Shader