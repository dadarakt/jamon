#version 110

varying vec2 v_textureCoordinate;
uniform vec4 textColor;
uniform vec4 backgroundColor;
uniform sampler2D fontTexture;

void main(){

	// Output color = color of the texture at the specified UV
	float alphaAbove	= (texture2D(fontTexture, v_textureCoordinate)).x;

	float alphaBelow 	= backgroundColor.a;


	float textAlpha = alphaAbove * textColor.a;

	float alpha 	= min(1.0 , alphaBelow + (1.0 - alphaBelow) * textAlpha);

	vec3 color = textColor.rgb * textAlpha + backgroundColor.rgb * (1.0 - textAlpha);

	gl_FragColor = vec4(color, alphaAbove);

	//gl_FragColor = vec4(alphaAbove,alphaAbovea,alphaAbove, 1);
}