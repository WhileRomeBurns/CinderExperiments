#version 150

uniform sampler2D image;

in vec3 cI; // incident ray, camera space
in vec3 cN; // normal, camera space

out vec4 fragColor;

void main()
{
	vec3 r = reflect( cI, cN );  r.z += 1.0;
	float m = 0.5 * inversesqrt( dot( r, r ) );
	vec2 uv = r.xy * m + 0.5;

	fragColor = vec4( texture( image, uv ).rgb, 1.0 );
}