#version 110

attribute vec2 position;

attribute vec2 uv;
varying vec2 o_uv;

uniform mat4 mvp;

void main(){
	gl_Position = mvp * vec4(position, 0, 1);	
	o_uv = uv;
}

