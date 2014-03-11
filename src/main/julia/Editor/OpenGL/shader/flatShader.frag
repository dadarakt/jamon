#version 130

uniform sampler2D Texture;
uniform vec4 Color;
varying vec2 o_uv;

void main(){
	gl_FragColor = texture2D(Texture, o_uv);
}