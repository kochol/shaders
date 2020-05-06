#version 330

uniform mat4 matVP;
uniform mat4 matGeo;


layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 uv;

out vec3 WorldPos;
out vec3 Normal;
out vec2 TexCoords;

void main() 
{
    gl_Position = matVP * matGeo * vec4(pos, 1);
    WorldPos = vec3(matGeo * vec4(pos, 1.0));
    Normal = mat3(matGeo) * normal;
    TexCoords = uv;
}

