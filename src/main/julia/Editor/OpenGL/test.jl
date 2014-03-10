module Test
require("modules/GLShader.jl")
require("modules/GLText.jl")
require("modules/GLWindow.jl")
require("modules/GLEvent.jl")
using GLUT, OpenGL, GLWindow, GLShader, GLText, GLEvent



createWindow()
linkFunctions()
glClearColor(1f0, 1f0, 1f0, 1f0)


function followMouse(event::MouseMoved)
	empty!(RENDER_LIST)
	push!(RENDER_LIST, ("abcdefg", event.x, event.y))
end
registerEvent(EventAction{MouseMoved}		("", x-> true, (), followMouse, ()))

initTextRendering()

glutMainLoop()

end