shader_type canvas_item;

void vertex() {
	//VERTEX.x += sin(TIME * 5.0 + VERTEX.y) * 10.0;
}

void fragment() {
    vec2 tex_size = vec2(64.0);           // pretend texture is 64×64
    vec2 uv = floor(UV * tex_size) / tex_size;
    COLOR = texture(TEXTURE, uv);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
