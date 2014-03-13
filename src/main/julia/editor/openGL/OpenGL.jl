module OpenGL

#must use GLUT for platform independence
using GLUT

# To get valid gl function pointers, the glut/opengl context needs to be initialized
glutInit()
glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE | GLUT_ALPHA)
glutInitWindowPosition(0, 0)
glutInitWindowSize(1,1)
window = glutCreateWindow("dummy")
glutHideWindow()

#macro for the glFunction declaration
macro createOpenGLFun(cFun)
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
        println("Warning: returned nullPointer -- Function:$(string(cFun)) not supported by OpenGL Driver")
        return ""
    end
    body = Expr(:ccall, functionPtr, returnType, Expr(:tuple,inputTypes...), argumentNames...)
    ret  = Expr(:function, Expr(:call, cName, argumentNames...), body)
    return esc(ret)
end
glDefinitionFolder = "definitions/"
#include all OpenGL types
include(glDefinitionFolder*"types.jl")

#find out the OpenGL version
@createOpenGLFun glGetString(name::Uint16)::Ptr{Cuchar}

#might not work with old graphic cards... Can't test this.
version = glGetString(0x1F02)::Ptr{Uint8}
version = bytestring(convert(Ptr{Uint8}, version))
println("using OpenGL version: $(version)")
global OpenGLver = float(match(r"[1-5]+\.[0-5]*", version).match)

#include the right OpenGL definitions
include(glDefinitionFolder*"glu.jl")
if OpenGLver >= 1.0 && OpenGLver < 2.1
    include(glDefinitionFolder*"gl10.jl")
elseif OpenGLver >= 2.0 && OpenGLver < 3.0
    include(glDefinitionFolder*"gl21.jl")
elseif OpenGLver >= 3.0 && OpenGLver < 4.2
    include(glDefinitionFolder*"gl33.jl")
elseif OpenGLver >= 4.2 && OpenGLver < 4.3
    include(glDefinitionFolder*"gl42.jl")
elseif OpenGLver >= 4.3
    include(glDefinitionFolder*"gl43.jl")
else
    error("OpenGL.jl: unknown OpenGL version: $(version)")
end

end #Module OpenGL


