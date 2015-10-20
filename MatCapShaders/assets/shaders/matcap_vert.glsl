#version 150

uniform mat4 ciModelViewProjection;
uniform mat4 ciModelView;
uniform mat3 ciNormalMatrix;

in vec4 ciPosition;
in vec3 ciNormal;

out vec3 cI; // incident ray, camera space
out vec3 cN; // normal, camera space

void main()
{
    cI = normalize( vec3(ciModelView * ciPosition) );
    cN = normalize( ciNormalMatrix * ciNormal );

    gl_Position = ciModelViewProjection * ciPosition;
}