require("modules/GLShader.jl")
require("GLShader.jl")

using OpenGL, GLShader

version = glGetString(VERSION)
println(bytestring(convert(Ptr{Uint8}, version)))

println(GLProgram("Shader/textShader"))