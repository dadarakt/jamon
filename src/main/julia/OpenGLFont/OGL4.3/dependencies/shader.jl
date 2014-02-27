global OpenGLver = "4.3"
using OpenGL


type Shader
    fragmentShader::(String, GLuint)
    vertexShader::(String, GLuint)
    program::GLuint
    content::Dict{String, (GLuint, DataType)}
end

function printShaderInfoLog(obj::GLuint)
    infologLength::Array{GLint, 1} = [0]
    charsWritten::Array{GLsizei, 1}  = [0]
 
    glGetShaderiv(obj, INFO_LOG_LENGTH, infologLength)
    
    if infologLength[1] > 0
        infoLog = zeros(GLchar, infologLength[1])
        glGetShaderInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        println()
        infoLog = 0
    end
end
 
function printProgramInfoLog(obj::GLuint)
    infologLength::Array{GLint, 1} = [0]
    charsWritten::Array{GLsizei, 1}  = [0]
 
    glGetProgramiv(obj, INFO_LOG_LENGTH, infologLength)
 
    if infologLength[1] > 0
        infoLog = zeros(GLchar, infologLength[1])
        glGetProgramInfoLog(obj, infologLength[1], charsWritten, infoLog)
        for elem in infoLog
            print(char(elem))
        end
        println()
        infoLog = 0
    end
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



loadShaders(name::String) = loadShaders("$(name).vert", "$(name).frag")
function loadShaders(vertex_file_path::String, fragment_file_path::String)

    vertexShaderID::GLuint   = readShader(vertex_file_path,   VERTEX_SHADER)
    fragmentShaderID::GLuint = readShader(fragment_file_path, FRAGMENT_SHADER)

    p = glCreateProgram()
    glAttachShader(p, vertexShaderID)
    glAttachShader(p, fragmentShaderID)
    glLinkProgram(p)
    printProgramInfoLog(p)
    return p
end

