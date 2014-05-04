#version 110

varying vec4 o_vcolor;

varying vec2 o_uv;
uniform float textureon;
uniform sampler2D bgtexture;

uniform float border;
uniform vec4 borderColor;

void main(){
	if(textureon > 0.5)
	{
		vec4 tColor = texture2D(bgtexture, o_uv);
		float alpha = o_vcolor.a + tColor.a - o_vcolor.a * tColor.a;
		gl_FragColor = vec4(mix(o_vcolor.rgb, tColor.rgb, tColor.a), alpha);
	}
	else{
		gl_FragColor = o_vcolor;
	}
}