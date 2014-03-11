using OpenGL

println( names(OpenGL))

createWindow()
linkFunctions()
glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

push!(RENDER_LIST, (Rectangle("media/test.jpg"),))
push!(RENDER_LIST, (Rectangle(0,0,50,50),))


glutMainLoop()