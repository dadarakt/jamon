attribute vec2 xy;

attribute vec2 a_textureCoordinate;
varying vec2 v_textureCoordinate;

uniform mat4 mvp;
const float pi = 3.1415;
float gauss(float x, float y, float sigma)
{
	float _pow = -((exp2(x) + exp2(y)) / (2.0*exp2(sigma)));
	return (1.0 / 2.0*pi*exp2(sigma)) * exp(_pow);
}

void main(){
	gl_Position = mvp * vec4(xy.x,xy.x * xy.y * 0.01, xy.y, 1);	
	v_textureCoordinate = a_textureCoordinate;
}

