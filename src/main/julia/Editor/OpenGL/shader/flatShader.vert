attribute vec2 position;

attribute vec2 a_textureCoordinate;
varying vec2 v_textureCoordinate;

uniform mat4 mvp;

void main(){
	gl_Position = mvp * vec4(position, 0, 1);	
	v_textureCoordinate = a_textureCoordinate;
}

