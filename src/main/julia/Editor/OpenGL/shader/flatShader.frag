#version 130

uniform sampler2D Texture;
uniform vec4 Color;
varying vec2 o_uv;

void main(){
	vec4 tColor = texture2D(Texture, o_uv);
	gl_FragColor = vec4(mix(tColor.rgb, Color.rgb, Color.a), tColor.a);
}