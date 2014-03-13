using OpenGL

version = glGetString(GL_VERSION)
println(bytestring(convert(Ptr{Uint8}, version)))

