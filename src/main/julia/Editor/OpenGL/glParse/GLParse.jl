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
        error("createOpenGLFun: returned nullPointer -- Function not supported by OpenGL Driver")
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