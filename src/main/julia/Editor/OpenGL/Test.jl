require("OpenGL.jl")
require("GLShader.jl")

using SOpenGL,GLShader

version = glGetString(VERSION)
println(bytestring(convert(Ptr{Uint8}, version)))

println(GLProgram("Shader/textShader"))