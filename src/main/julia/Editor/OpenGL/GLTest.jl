using OpenGL


createWindow()
linkFunctions()

glClearColor(1f0, 1f0, 1f0, 1f0)

push!(RENDER_LIST, (Rectangle("media/test.jpg"),))
push!(RENDER_LIST, (Rectangle("media/lol.gif"),))
push!(RENDER_LIST, (Rectangle(0f0,0f0,500f0,500f0, GLColor(Float32[0.4, 0,0,0.5]), Texture()),))


glutMainLoop()