global OpenGLver = "4.3"
using OpenGL, GLUT, Match

include("dependencies/textfield.jl")

include("dependencies/GLMatrixMath.jl")
include("dependencies/GLUTWindow.jl")
initGluint() = x::GLuint = 0

global p = initGluint()
global textureID = initGluint()

global projMatrixLoc    = initGluint()
global viewMatrixLoc    = initGluint()
global modelLoc         = initGluint()

global projMatrix = eye(GLfloat, 4,4)
global viewMatrix = eye(GLfloat, 4,4)
global model = eye(GLfloat, 4,4)


global wheel = 0.0f0

function mousePressed(button::Int32, status::Int32, x::Int32, y::Int32)
	global wheel 
	global model 
    if button == 3
        wheel = wheel + 10f0        
    elseif button == 4
        wheel = wheel - 10f0
    end
    model = translateYMatrix(wheel)
end

function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = set_orthographic( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function renderFunc()

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)


    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)


    glUseProgram(p)

    glUniformMatrix4fv(projMatrixLoc,  1, FALSE, reshape(projMatrix, 16))
    glUniformMatrix4fv(viewMatrixLoc,  1, FALSE, reshape(viewMatrix, 16))
    glUniformMatrix4fv(modelLoc,  1, FALSE, reshape(model, 16))
	
    glUniform3f(glGetUniformLocation(p, "customColor"), 0f0, 0f0, 0f0)

    render(textField)
end

createWindow(name = "Moiiin", windowSize=[1024,1000], windowPosition = [1950, 20])
linkFunctions(passiveMotionF = false)

glEnable(DEPTH_TEST)
glEnable(MULTISAMPLE)
glEnable(SCISSOR_TEST)
glClearColor(0.9f0, 0.9f0, 0.9f0, 1.0f0)

asciiAtlas = AsciiAtlas("dependencies/VeraMono")


fStream = open("main.jl")
text = readall(fStream)
close(fStream)

textField   = TextField(
	text, 
	20f0, 980f0, 120, 30f0, 
	asciiAtlas, float32([1,1,1]) )


p           = loadShaders("dependencies/color")

projMatrixLoc   = glGetUniformLocation(p, "projMatrix")
viewMatrixLoc   = glGetUniformLocation(p, "viewMatrix")
modelLoc        = glGetUniformLocation(p, "model")

glutMainLoop()

