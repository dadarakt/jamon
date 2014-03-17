#version 330 core

// Input vertex data, different for all executions of this shader.
in vec2 position;
in vec2 uv;

// Output data ; will be interpolated for each fragment.
out vec2 UV;

// Values that stay constant for the whole mesh.
uniform mat4 mvp;

void main(){

	gl_Position = mvp * vec4(position, 0, 1);
	
	// UV of the vertex. No special space for this one.
	UV = uv;
}

