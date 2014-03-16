using GLGraphics, OpenGL, GLUT

createWindow()
linkFunctions()

glClearColor(1f0, 1f0, 1f0, 1f0)
gridx = [float32(x) for x=-100:1:100]
gridy = [float32(y) for y=-100:1:100]

glDisplay(Grid{Float32}(gridx, gridy))
#glDisplay(Rectangle(0f0, 1000f0, 1000f0, 500f0, GLColor(1f0,0.9f0,0.9f0,0.2f0)))
glDisplay(open("gridTest.jl"))
glutMainLoop()
