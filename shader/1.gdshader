shader_type canvas_item;

void vertex() {
	//VERTEX.x += sin(TIME * 5.0 + VERTEX.y) * 10.0;
}

void fragment() {
    vec4 c = texture(TEXTURE, UV);
    float d = distance(UV, vec2(0.5));
    c.rgb *= smoothstep(0.7, 0.3, d);
    COLOR = c;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
