module Test


require("modules/GLShader.jl")
require("modules/GLText.jl")
require("modules/GLWindow.jl")
require("modules/GLEvent.jl")
require("modules/GLMatrixMath.jl")

using GLUT, OpenGL, GLWindow, GLShader, GLText, GLEvent, GLMatrixMath
import GLWindow.render, GLWindow.perspectiveProj
type Grid{T <: Real}
	id::GLuint
	length::Int
	function Grid(x::Array{T,1}, y::Array{T,1})
		grid = Array(T, length(x) * length(y) * 2)
		index = 1
		for a in x, b in y
			grid[index:index+1] = [a,b]
			index += 2
		end
		buffer = GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES, grid)
		bLength = length(grid)
		grid = 0
		vetexArrayID = glGenVertexArrays()
	    glBindVertexArray(vetexArrayID)
	    glBindBuffer(ARRAY_BUFFER, buffer.id)
	    vertexLoc   = glGetAttribLocation(gridshader.id, "xy")
	    glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)
	    glEnableVertexAttribArray(vertexLoc)
	    glBindVertexArray(0)
	    new(vetexArrayID, bLength)
	end
end

function render(g::Grid)
	glUseProgram(gridshader.id)
    glBindVertexArray(g.id)
    cam = setCamera([5f0, 5f0, 5f0], [0f0, 0f0, 0f0])
	glUniformMatrix4fv(glGetUniformLocation(gridshader.id, "mvp"),  1, FALSE, vec(perspectiveProj * cam))
    glDrawArrays(POINTS, 0, g.length)
end



createWindow()
linkFunctions()
glClearColor(1f0, 1f0, 1f0, 1f0)


gridshader = GLProgram("shader/gridshader")


gridx = [float32(x) for x=-100:100]
gridy = [float32(y) for y=-100:100]

push!(RENDER_LIST, (Grid{Float32}(gridx, gridy),))





function setCamera(eyePos::Array{Float32, 1}, lookAt::Array{Float32, 1}) 
    up = [0.0f0, 1.0f0, 0.0f0]
 
    zaxis  = eyePos - lookAt
    zaxis  *= 1.0 / norm(zaxis)
    xaxis  = cross(up, zaxis)
    xaxis  *= 1.0 / norm(xaxis)
    yaxis  = cross(zaxis, xaxis)

	viewMatrix = eye(Float32, 4,4)
    viewMatrix[1,1:3]  = xaxis
    viewMatrix[2,1:3]  = yaxis
    viewMatrix[3,1:3]  = zaxis

    viewMatrix * translationMatrix(-eyePos)
end


initTextRendering()

glutMainLoop()

end