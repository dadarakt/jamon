
// Interpolated values from the vertex shaders
in vec2 UV;

uniform vec3 textColor;

// Ouput data
out vec4 color;

// Values that stay constant for the whole mesh.
uniform sampler2D fontTexture;

void main(){

	// Output color = color of the texture at the specified UV
	color = vec4(textColor, texture(fontTexture, UV.xy).x);
}