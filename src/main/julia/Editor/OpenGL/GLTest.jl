module GLTest

global const RENDER_LIST = Any[]

end #module GLTest
require("../modules/GLWindow")
require("../OpenGL.jl")
using GLWindow, SOpenGL, GLUT

global const orthographicProj 	= eye(GLfloat, 4,4)
global const perspectiveProj 	= eye(GLfloat, 4,4)

function reshapeFuncCallback(w::Csize_t, h::Csize_t)
    glViewport(0, 0, w, h)
    computeOrthographicProjection(orthographicProj, 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    computeFOVProjection(perspectiveProj, 90f0, 1f0, -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)
    for elem in RENDER_LIST
    	render(elem...)
    end
    return nothing
end

createWindow()

glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

glutMainLoop()