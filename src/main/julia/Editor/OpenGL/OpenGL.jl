module OpenGL

global OpenGLver = ""
using GLUT

include("OpenGL/gl21.jl")
include("OpenGL/glCommon.jl")


function createOpenGLFun(cFun)
    cName = cFun.args[1].args[1]
    arguments = map(function (arg)
                        if isa(arg, Symbol)
                            arg = Expr(__ofTypeSym, arg)
                        end
                        return arg
                    end, cFun.args[1].args[2:end])

    # Get info out of arguments of `cFun`
    argumentNames = map(arg->arg.args[1], arguments)
    returnType    = cFun.args[2]
    inputTypes    = map(arg->arg.args[2], arguments)
    # Construct the result.
    functionPtr = glutGetProcAddress(cName)
    if functionPtr == C_NULL
        error("createOpenGLFun: returned nullPointer ")
    end
    body = Expr(:ccall, functionPtr, returnType, Expr(:tuple,inputTypes...), argumentNames...)
    ret  = Expr(:function, Expr(:call, cName, argumentNames...), body)
    return ret
end
function declareGLFunction(cFunctions)
    errorList = (ASCIIString, ASCIIString)[]
    for cFun in cFunctions
        try 
            eval(createOpenGLFun(cFun))
            eval(Expr(:export, cFun.args[1].args[1]))
        catch errorMessage
            push!(errorList, (string(cFun), string(errorMessage)))
        end
    end
    errorList
end
function declareGLTypes(types)
    for _type in types
        eval(_type)
        eval(Expr(:export, _type.args[1]))
    end
end
function declareGLConstant(constants)
    for constant in constants
        eval(constant)
        eval(Expr(:export, constant.args[1].args[1]))
    end
end
glutInit()
glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE)
glutInitWindowPosition(100,100)
glutInitWindowSize(600,600);
glutCreateWindow("trolol")

declareGLTypes(GL_COMMON_TYPES)
println(declareGLFunction(GL_COMMON_FUNCTIONS))
println(declareGLConstant(GL_COMMON_CONSTANTS))

println(declareGLFunction(GL_GL21_FUNCTIONS))

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
    unsafe_load(result, 1)
end
function glGenTexture()
    result::Ptr{GLuint} = uint32([0])
    glGenTextures(uint64(1), result)
    unsafe_load(result, 1)
end

version = glGetString(VERSION)
println(version)
println(bytestring(convert(Ptr{Uint8}, version)))

end #module OpenGL