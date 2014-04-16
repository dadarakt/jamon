attribute vec2 xy;

attribute vec2 a_textureCoordinate;
varying vec2 v_textureCoordinate;
varying vec2 o_xy;


uniform mat4 mvp;
const float pi = 3.1415;

float gauss2(float x, float y, float mx, float my, float sx, float sy)
{
	float _pow = (-pow(x - mx, 2.0) / (2.0*pow(sx, 2.0))) + (-pow(y - my, 2.0) / (2.0*pow(sy, 2.0)));
	return  exp(_pow);
}
float gauss1(float x, float y, float m, float s)
{
	return gauss2( x, y, m, m, s, s);
}
void main(){
	gl_Position = mvp * vec4(xy.x, gauss1(xy.x, xy.y , 0.0, 50.0) * 100.0, xy.y, 1.0);	
	v_textureCoordinate = a_textureCoordinate;
	o_xy = xy;
}
