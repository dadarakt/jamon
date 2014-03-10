include("modules/GLWindow.jl")
using GLWindow

createWindow()
linkFunctions()
glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

glutMainLoop()