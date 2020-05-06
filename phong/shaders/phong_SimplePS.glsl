#version 330

uniform vec3 lightPos;
uniform vec3 camPos;
uniform vec3 lightColor;
uniform float specularStrength;

in vec4 color;
out vec4 outColor;
in vec3 FragPos;
in vec3 Normal;


void main() 
{
   vec3 norm = normalize(Normal);
   vec3 lightDir = normalize(lightPos - FragPos);
   float diff = max(dot(norm, lightDir), 0.0);
   
   vec3 viewDir = normalize(camPos - FragPos);
   vec3 reflectDir = reflect(-lightDir, norm);  
   float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
   float specular = specularStrength * spec;// * lightColor;
   
   outColor = color * 0.1 + color * vec4((diff + specular ) * lightColor, 1.0);
}