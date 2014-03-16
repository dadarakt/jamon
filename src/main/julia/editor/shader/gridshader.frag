uniform vec4 Color;
varying vec2 o_xy;

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
	float gvalue = gauss1(o_xy.x, o_xy.y , 0.0, 50.0);

	gl_FragColor = vec4(mix(vec3(132.0 / 255.0, 112.0 / 255.0, 1.0), vec3(0.01, 139.0 / 255.0, 139.0 / 255.0), gvalue), 1.0);
}