using GLGraphics

createWindow()
linkFunctions()

glClearColor(1f0, 1f0, 1f0, 1f0)

push!(RENDER_LIST, (Rectangle("GLGraphics/tests/graytest.jpg"),))
push!(RENDER_LIST, (Rectangle(0f0,0f0,500f0,500f0, GLColor(Float32[0.4, 0,0,0.5]), Texture()),))
push!(RENDER_LIST, (Rectangle(0f0,500f0,400f0,400f0, GLColor(Float32[0.0, 0.3,0,0.3]), Texture("GLGraphics/tests/transparent.png")),))
push!(RENDER_LIST, (Rectangle(500f0,500f0,400f0,400f0, GLColor(Float32[0.4, 0,0,0.0]), Texture("GLGraphics/tests/colortest.jpg")),))

push!(RENDER_LIST, (Rectangle(500f0,0f0,500f0,500f0, GLColor(Float32[0.4, 0,0,0.0]),Texture("GLGraphics/tests/transparent.gif")),))
push!(RENDER_LIST, (readall(open("GLTest.jl")), 0, 500, Float32[1,1,1,1]))

glutMainLoop()