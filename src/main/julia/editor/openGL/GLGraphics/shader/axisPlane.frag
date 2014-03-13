#version 110


void main(){

	if(textureOn == 1.0)
	{
		vec4 tColor = texture2D(Texture, o_uv);
		float alpha = Color.a + tColor.a - Color.a * tColor.a;
		gl_FragColor = vec4(mix(Color.rgb, tColor.rgb, tColor.a), alpha);
	}
	else{
		gl_FragColor = Color;
	}
	

}