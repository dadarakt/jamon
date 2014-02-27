varying vec2 v_textureCoordinate;
uniform vec4 textColor;
uniform sampler2D fontTexture;

void main(){

	// Output color = color of the texture at the specified UV
	gl_FragColor = vec4(textColor.xyz, (texture2D(fontTexture, v_textureCoordinate)).x * textColor.w);
}