#version 330

uniform mat4 matVP;
uniform mat4 matGeo;


layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;

out vec4 color;
out vec3 FragPos;
out vec3 Normal;

void main() 
{
   color = vec4(abs(normal), 1.0);
   gl_Position = matVP * matGeo * vec4(pos, 1);   
   FragPos = vec3(matGeo * vec4(pos, 1.0));
   Normal = mat3(matGeo) * normal;// normalize(vec3(matGeo * vec4(normal, 1.0)));
}
