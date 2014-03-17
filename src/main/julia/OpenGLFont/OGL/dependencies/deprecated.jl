global OpenGLver = "4.3"
using OpenGL, GLUT, Match

include("shader.jl")
include("GLMatrixMath.jl")

function createQuad(x::GLfloat, y::GLfloat, width::GLfloat, height::GLfloat)
    uvMaxX = 0.46875f0
    uvMaxY = 1f0
    v = [
    x, y,
    x, y + height,
    x + width,  y,
    x + width,  y,
    x, y + height,
    x+ width, y + height]
    u = [
    0.0f0, uvMaxY,
    0.0f0, 0.0f0,
    uvMaxX, uvMaxY,
    uvMaxX, uvMaxY,
    0.0f0, 0.0f0,
    uvMaxX, 0.0f0]
    v,u
end


function createQuadStrip(x::GLfloat, y::GLfloat, spacing::GLfloat, width::GLfloat, height::GLfloat, amount::Int)
    vertices         = Array(GLfloat, amount * 2 * 6)
    uv               = Array(GLfloat, amount * 2 * 6)
    for i = 1:amount
        vTemp, uTemp = createQuad(x + ((width+ spacing) * (i-1)) , y, width, height)
        vertices[(i-1)*6*4 + 1:i*6*2] = vTemp
        uv[(i-1)*6*2 + 1:i*6*2] = uTemp
    end

    return (vertices, uv)
end




type GLGlyph
    quad::Array{GLfloat,1}
    uv::Array{GLfloat,1}
    advance::GLfloat
end

function initGluint()
    x::GLuint = 0
end

#Program and Shader Identifiers
global p = initGluint()
global textureID = initGluint()

#Vertex Attribute Locations
global vertexLoc        = initGluint()
global colorLoc         = initGluint()
global textureLoc       = initGluint()
global uvLoc            = initGluint()
#Uniform variable Locations
global projMatrixLoc    = initGluint()
global viewMatrixLoc    = initGluint()
global modelLoc         = initGluint()


global vao = zeros(GLuint, 3)

global projMatrix = eye(GLfloat, 4,4)
global viewMatrix = eye(GLfloat, 4,4)
global model = eye(GLfloat, 4,4)


function loadImage(path::String)
    img, w, h = glimreadGray(path)
    textureID::GLuint = 0
    glGenTextures(1, [textureID])
    glBindTexture(TEXTURE_2D, textureID)
    glTexParameteri( TEXTURE_2D, TEXTURE_WRAP_S, CLAMP_TO_EDGE )
    glTexParameteri( TEXTURE_2D, TEXTURE_WRAP_T, CLAMP_TO_EDGE )
    glTexParameteri( TEXTURE_2D, TEXTURE_MAG_FILTER, LINEAR )
    glTexParameteri( TEXTURE_2D, TEXTURE_MIN_FILTER, LINEAR )
    glTexImage2D( TEXTURE_2D, 0, DEPTH_COMPONENT, w, h, 0, DEPTH_COMPONENT, UNSIGNED_BYTE, img)

    return textureID
end




function changeSize(w::GLsizei, h::GLsizei)
    global projMatrix
    #Set the viewport to be the entire window
    glViewport(0, 0, w, h)
    projMatrix = set_orthographic( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)

    return nothing
end
_changeSize = cfunction(changeSize, Void, (GLsizei, GLsizei))


global repeats = 1

function renderScene()
    global viewMatrix
    global projMatrix
    global model
    global vao
    global projMatrixLoc
    global viewMatrixLoc
    global modelLoc
    global p
    global textureID
    global textureLoc
    global colorLoc


    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)
    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glUseProgram(p)


    glUniformMatrix4fv(projMatrixLoc,  1, FALSE, reshape(projMatrix, 16))
    glUniformMatrix4fv(viewMatrixLoc,  1, FALSE, reshape(viewMatrix, 16))
    glUniformMatrix4fv(modelLoc,  1, FALSE, reshape(model, 16))


    glActiveTexture(TEXTURE0);
    glBindTexture(TEXTURE_2D, textureID);
    # Set our "texture" sampler to user Texture Unit 0
    glUniform1i(textureLoc, 0);

    glBindVertexArray(vao[1]);
    glUniform3f(colorLoc, 0f0, 0f0, 1f0)
    glDrawArrays(TRIANGLES, 0, 5*6)

    glUniform3f(colorLoc, 0f0, 1f0, 0f0)
    glDrawArrays(TRIANGLES, 5*6, 5*6 + 2*6)

    glUniform3f(colorLoc, 1f0, 0f0, 0f0)
    glDrawArrays(TRIANGLES, 5*6 + 2*6, repeats * 6)


    glutSwapBuffers()
    return nothing
end
_renderScene = cfunction(renderScene, Void, ())

function keyPressed(key::Cuchar, x::Int32, y::Int32)
    if key == int('q')
        glDeleteProgram(p)
        glutDestroyWindow(window)
    end
    return nothing
end
_keyPressed = cfunction(keyPressed, Void, (Cuchar, Int32, Int32))

global wheel = 0.0f0

function mouseClicked(button::Int32, status::Int32, x::Int32, y::Int32)
    global model
    global wheel
    if button == 3
        wheel = wheel + 5f0        
    elseif button == 4
        wheel = wheel - 5f0
    end
    model = translateYMatrix(wheel)

    return nothing
end
_mouseClicked = cfunction(mouseClicked, Void, (Int32, Int32, Int32, Int32))




function readFontTexture(name::String)

    id          = loadImage("$(name).bmp")
    flStream    = open("$(name).txt")
    width       = int(readline(flStream))
    height      = int(readline(flStream))
    lineHeight::Float32  = int(readline(flStream))

    asciiDict = Dict{Char, GLGlyph}()
    for line in eachline(flStream) 
        values          = split(line)
        charCode        = char(int(values[1]))
        advance::Float32         = int(values[2])
        x::Float32      = int(values[3]) / width
        x2::Float32     = (int(values[3]) + advance) / width
        y::Float32      = int(values[4]) / height
        texLineHeight::Float32 = lineHeight / height

        quad = [
            0, 0,
            0, lineHeight,
            advance, 0,
            advance, 0,
            0, lineHeight,
            advance, lineHeight]

        quadUV = [
            x, y,
            x, y + texLineHeight, 
            x2, y, 
            x2, y,
            x, y + texLineHeight,
            x2, y + texLineHeight]
        quadUV = [
            x, y + texLineHeight,
            x, y , 
            x2, y + texLineHeight, 
            x2, y+ texLineHeight,
            x, y ,
            x2, y]
           
        asciiDict[charCode] = GLGlyph(quad, quadUV, advance)
    end
    return (id, asciiDict)
end


function setupBuffers(text::String, asciiDict)
    global vertexLoc
    global colorLoc
    global uvLoc

    quad        = Array(GLfloat, length(text) * 2 * 6)
    uv          = Array(GLfloat, length(text) * 2 * 6)
    position    = 1
    x = 0f0
    y = 100f0
    for charCode in text
        glyph = get(asciiDict, charCode, GLGlyph(Array(GLfloat, 0), Array(GLfloat, 0), -1.f0))

        if length(glyph.quad) == 6 * 2
            pos = (position-1) * 12 + 1 
            quad[pos : pos + 11] = glyph.quad + [x, y, x, y, x, y, x, y, x, y, x, y]
            uv[pos : pos + 11] = glyph.uv#

           position = position + 1
            x = x + glyph.advance
        else
            println("AKLdjökasjdöjaölksjdös")
        end
    end

    buffers = zeros(GLuint,3)
    glGenVertexArrays(3, vao)
    println(vao[1])
    
    glBindVertexArray(vao[1])

    glGenBuffers(3, buffers)
    glBindBuffer(ARRAY_BUFFER, buffers[1])
    glBufferData(ARRAY_BUFFER, sizeof(quad), quad, STATIC_DRAW)
    glEnableVertexAttribArray(vertexLoc)
    glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)

    glBindBuffer(ARRAY_BUFFER, buffers[3])
    glBufferData(ARRAY_BUFFER, sizeof(uv), uv, STATIC_DRAW)
    glEnableVertexAttribArray(uvLoc)
    glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)

end




glutInit()
glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE)
glutInitWindowPosition(100,100)
glutInitWindowSize(600,600);
glutCreateWindow("trolol")

glutDisplayFunc(_renderScene)
glutIdleFunc(_renderScene)
glutReshapeFunc(_changeSize)
glutKeyboardFunc(_keyPressed)
glutMouseFunc(_mouseClicked)


glEnable(DEPTH_TEST)
glEnable(MULTISAMPLE)
glClearColor(1.0f0, 1.0f0, 1.0f0, 0.0f0)


p = loadShaders( "color" )

textureID,asciiDict = readFontTexture("VeraMono")

vertexLoc       = glGetAttribLocation(p, "position")
colorLoc        = glGetUniformLocation(p, "customColor")
projMatrixLoc   = glGetUniformLocation(p, "projMatrix")
viewMatrixLoc   = glGetUniformLocation(p, "viewMatrix")
modelLoc        = glGetUniformLocation(p, "model")

textureLoc      = glGetAttribLocation(p, "myTexture");
uvLoc           = glGetAttribLocation(p, "uv");

text = "man man ist das geieeel! Kugelrunde Attribute rennen durch die gegend"
setupBuffers(text, asciiDict)
repeats = length(text)
glutMainLoop()

