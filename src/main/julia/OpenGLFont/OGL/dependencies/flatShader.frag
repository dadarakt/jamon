
// Interpolated values from the vertex shaders
in vec2 UV;

uniform vec4 Color;

// Ouput data
out vec4 color;

// Values that stay constant for the whole mesh.
uniform sampler2D myTexture;

void main(){

	// Output color = color of the texture at the specified UV
	color = Color;
}