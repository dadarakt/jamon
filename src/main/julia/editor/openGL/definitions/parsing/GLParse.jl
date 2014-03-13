module GLParse
using GLUT

export createOpenGLFun

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

end #Module GLParse