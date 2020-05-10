#version 330

in vec4 color;
out vec4 outColor;

uniform vec4 lightColors[2];

void main() {
   outColor = lightColors[0] + lightColors[1];// vec4(color);
}