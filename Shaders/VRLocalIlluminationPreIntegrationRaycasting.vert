varying vec3 v;

void main(void)
{

	gl_TexCoord[0] = gl_MultiTexCoord0;
	gl_TexCoord[1] = gl_MultiTexCoord1;
	
	//transform vertex position into homogeneous clip space
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	v = vec3(gl_ModelViewMatrix * gl_Vertex);

}