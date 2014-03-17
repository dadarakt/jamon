include("dependencies/OGLUtil.jl")


function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeFOVProjection( 90f0, 1f0, -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
	global projMatrix, model, words, textField

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

    
    
    return nothing
end

createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
initUtils()


glutMainLoop()