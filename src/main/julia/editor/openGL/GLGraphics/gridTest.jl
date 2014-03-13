module Test

using OpenGL
import OpenGL.render, OpenGL.perspectiveProj

gridshader = GLProgram("shader/gridshader")

#intended usage index 1,2,3 = x,y,z
immutable Vec{Cardinality, T}
 	v::Array{T, 1}
	function Vec(v::Array{T,1})
		Cardinality == length(v)
		new(v)
	end
end
#typealias Vec32{Cardinality} Vec{Cardinality, Float32}

Vec{T}(v::Array{T, 1}) = Vec{length(v), T}(v)
Vec(v::Real...) = Vec([v...])


Vec32{T <: Real}(v::Array{T,1}) = Vec{length(v), Float32}(float32(v))
Vec32(v::Real...) = Vec32([v...])



type Grid{T <: Real}
	grid::GLVertexArray
	function Grid(x::Array{T,1}, y::Array{T,1})
		grid = Array(T, length(x) * length(y) * 2)
		index = 1
		for a in x, b in y
			grid[index:index+1] = [a,b]
			index += 2
		end
		new(GLVertexArray(["xy" => grid], gridshader))

	end
end

function render(g::Grid)
	glUseProgram(gridshader.id)
    cam = setCamera([5f0, 5f0, 5f0], [0f0, 0f0, 0f0])
	glUniformMatrix4fv(glGetUniformLocation(gridshader.id, "mvp"),  1, GL_FALSE, vec(perspectiveProj * cam))
	render(g.grid)
end



createWindow()
linkFunctions()
glClearColor(1f0, 1f0, 1f0, 1f0)


gridx = [float32(x) for x=-100:100]
gridy = [float32(y) for y=-100:100]

push!(RENDER_LIST, (Grid{Float32}(gridx, gridy),))


function rotateCamera()

end
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


type Camera
	mvp::Matrix{Float32}
end
function computeMatricesFromInputs(cam::Camera)

	# glfwGetTime is called only once, the first time this function is called
	global lastTime = time_ns()

	# Compute time difference between current and last frame
	currentTime = time_ns()
	float deltaTime = float32(currentTime - lastTime)

	# Get mouse position
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);

	# Reset mouse position for next frame
	glfwSetCursorPos(window, 1024/2, 768/2);

	# Compute new orientation
	horizontalAngle += mouseSpeed * float32(1024/2 - xpos );
	verticalAngle   += mouseSpeed * float32( 768/2 - ypos );

	# Direction : Spherical coordinates to Cartesian coordinates conversion
	glm::vec3 direction(
		cos(verticalAngle) * sin(horizontalAngle), 
		sin(verticalAngle),
		cos(verticalAngle) * cos(horizontalAngle)
	);
	
	# Right vector
	glm::vec3 right = glm::vec3(
		sin(horizontalAngle - 3.14f/2.0f), 
		0,
		cos(horizontalAngle - 3.14f/2.0f)
	);
	
	# Up vector
	glm::vec3 up = glm::cross( right, direction );

	# Move forward
	if (glfwGetKey( window, GLFW_KEY_UP ) == GLFW_PRESS){
		position += direction * deltaTime * speed;
	}
	# Move backward
	if (glfwGetKey( window, GLFW_KEY_DOWN ) == GLFW_PRESS){
		position -= direction * deltaTime * speed;
	}
	# Strafe right
	if (glfwGetKey( window, GLFW_KEY_RIGHT ) == GLFW_PRESS){
		position += right * deltaTime * speed;
	}
	# Strafe left
	if (glfwGetKey( window, GLFW_KEY_LEFT ) == GLFW_PRESS){
		position -= right * deltaTime * speed;
	}

	float FoV = initialFoV;# - 5 * glfwGetMouseWheel(); # Now GLFW 3 requires setting up a callback for this. It's a bit too complicated for this beginner's tutorial, so it's disabled instead.

	# Projection matrix : 45° Field of View, 4:3 ratio, display range : 0.1 unit <-> 100 units
	ProjectionMatrix = glm::perspective(FoV, 4.0f / 3.0f, 0.1f, 100.0f);
	# Camera matrix
	ViewMatrix       = glm::lookAt(
								position,           # Camera is here
								position+direction, # and looks here : at the same position, plus "direction"
								up                  # Head is up (set to 0,-1,0 to look upside-down)
						   );

	# For the next frame, the "last time" will be "now"
	lastTime = currentTime;
end

glutMainLoop()

end