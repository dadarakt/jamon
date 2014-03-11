include("modules/GLWindow.jl")
include("modules/GLShapes.jl")
using GLWindow, OpenGL,GLShapes, GLUT


createWindow()
linkFunctions()
glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

push!(RENDER_LIST, (Rectangle("media/test.jpg"),))
push!(RENDER_LIST, (Rectangle(0,0,50,50),))

initGLShapes()

glutMainLoop()