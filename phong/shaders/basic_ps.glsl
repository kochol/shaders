#version 330

uniform vec3 lightColor;

out vec4 outColor;

void main() 
{
   outColor = vec4(lightColor, 1.0);
}