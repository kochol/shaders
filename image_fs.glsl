#version 330
in vec2 uv;
out vec4 outColor;

uniform sampler2D shadow_map;
uniform sampler2D ao_map;
 
void main() {
   outColor = vec4(texture(shadow_map, uv).r, 
       texture(ao_map, uv).r, 0, 1);
   
}
