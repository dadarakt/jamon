global OpenGLver = "4.3"

using OpenGL, Match

reload("dependencies/GLUTWindow.jl")

function displayFuncCallback()
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)
    return nothing
end

function listenTo(x::KeyUp)
    println("down: $(x.key)")
end

function listenTo(x::KeyDown)
    println("up: $(x.key)")
end

createWindow(name = "Moiiin", windowSize = [100, 100], windowPosition = [1950, 20])
linkFunctions()

glEnable(DEPTH_TEST)
glEnable(MULTISAMPLE)
glEnable(SCISSOR_TEST)
glClearColor(0.9f0, 0.9f0, 0.9f0, 1.0f0)


glutMainLoop()

