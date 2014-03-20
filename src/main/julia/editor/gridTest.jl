using GLGraphics, OpenGL, GLUT

createWindow(name= "LOL", windowPosition=[2000,0])
linkFunctions()

glClearColor(1f0, 1f0, 1f0, 1f0)
gridx = [float32(x) for x=-100:1:100]
gridy = [float32(y) for y=-100:1:100]

glDisplay(Grid{Float32}(gridx, gridy))
glDisplay(Rectangle(0f0,0f0,500f0,500f0, GLColor(Float32[0.4, 0,0,0.5]), Texture()))
glDisplay(open("editor.jl"))
glutMainLoop()
