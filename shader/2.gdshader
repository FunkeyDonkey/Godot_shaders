shader_type canvas_item;

void vertex() {
	//VERTEX.x += sin(TIME * 5.0 + VERTEX.y) * 10.0;
}

void fragment() {
    vec4 c = texture(TEXTURE, UV);
    c.rgb *= vec3(UV.x, UV.y, 1.0 - UV.x);  // tint varies across the image
    COLOR = c;
}