using OpenGL


createWindow()
linkFunctions()

glClearColor(1f0, 1f0, 1f0, 1f0)

push!(RENDER_LIST, (Rectangle("media/graytest.jpg"),))
push!(RENDER_LIST, (Rectangle(0f0,0f0,500f0,500f0, GLColor(Float32[0.4, 0,0,0.5]), Texture()),))
push!(RENDER_LIST, (Rectangle(0f0,500f0,400f0,400f0, GLColor(Float32[0.4, 0,0,0.0]), Texture("media/transparent.png")),))
push!(RENDER_LIST, (Rectangle(500f0,500f0,400f0,400f0, GLColor(Float32[0.4, 0,0,0.0]), Texture("media/colortest.jpg")),))

push!(RENDER_LIST, (Rectangle("media/transparent.gif"),))
push!(RENDER_LIST, (readall(open("Injections.jl")), 0, 500, Float32[1,1,1,1]))

glutMainLoop()