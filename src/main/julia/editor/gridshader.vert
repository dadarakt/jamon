attribute vec3 position;

attribute vec3 vcolor;
varying vec3 o_vcolor;


uniform mat4 mvp;

void main(){
	gl_Position = mvp * vec4(position, 1.0);	
	o_vcolor = vcolor;
}
