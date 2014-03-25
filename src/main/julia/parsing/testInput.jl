include("dependencies/OGLUtil.jl")
function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographicProjection( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
	global projMatrix, model, words, textField, mouseCursor

	glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

	render(textField)
	render(textField2)

	return nothing
end

glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

glutMainLoop()

