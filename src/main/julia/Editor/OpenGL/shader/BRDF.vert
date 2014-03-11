attribute vec3 Tangent;
attribute vec3 Binormal;

uniform vec3 LightDir;  // Light direction in eye coordinates
uniform vec4 ViewPosition;

varying vec3 N, L, H, R, T, B;

void main()
{
    vec3 V, eyeDir;
    vec4 pos;

    pos    = gl_ModelViewMatrix * gl_Vertex;
    eyeDir = pos.xyz;

    N = normalize(gl_NormalMatrix * gl_Normal);
    L = normalize(LightDir);
    V = normalize((gl_ModelViewMatrix * ViewPosition).xyz - pos.xyz);
    H = normalize(L + V);
    R = normalize(reflect(eyeDir, N));
    T = normalize(gl_NormalMatrix * Tangent);
    B = normalize(gl_NormalMatrix * Binormal);

    gl_Position = ftransform();
}