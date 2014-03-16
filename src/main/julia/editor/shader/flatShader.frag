#version 110

uniform sampler2D Texture;
uniform vec4 Color;
uniform float textureOn;
varying vec2 o_uv;

void main(){
	float border = 0.01;
	if(o_uv.x >= 1.0 - border || o_uv.y >= 1.0 - border || o_uv.x <= border || o_uv.y <= border)
	{
		gl_FragColor = vec4(1.0,1.0,1.0,1.0);
	}
	else if(textureOn == 1.0)
	{
		vec4 tColor = texture2D(Texture, o_uv);
		float alpha = Color.a + tColor.a - Color.a * tColor.a;
		gl_FragColor = vec4(mix(Color.rgb, tColor.rgb, tColor.a), alpha);
	}
	else{
		gl_FragColor = Color;
	}
	

}