shader_type canvas_item;

uniform sampler2D screen_texture:hint_screen_texture,filter_nearest;

float average(vec3 v){
	return (v.r + v.g + v.b) /3.0;
}

void fragment() {
	vec4 screen_color = texture(screen_texture,SCREEN_UV);
	float grayscale = average(screen_color.rgb);
	COLOR = vec4(grayscale);
}
