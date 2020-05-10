#version 330

in vec2 uv;
out vec4 outColor;

uniform sampler2D RT;
 
void main() {
    outColor = texture(RT, uv);
}