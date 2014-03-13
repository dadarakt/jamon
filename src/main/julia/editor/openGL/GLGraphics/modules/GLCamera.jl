

function computeMatricesFromInputs()

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