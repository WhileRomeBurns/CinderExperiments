#version 150

uniform sampler2D image;

in vec3 cI; // incident ray, camera space
in vec3 cN; // normal, camera space

out vec4 fragColor;

void main()
{
    vec3  r = reflect( cI, cN );
    float m = 2.0 * sqrt( pow( r.x, 2.0 ) + pow( r.y, 2.0 ) + pow( r.z + 1., 2.0 ) );
    vec2 vN = r.xy / m + 0.5;

    fragColor = vec4( texture2D( image, vN ).rgb, 1.0 );
}