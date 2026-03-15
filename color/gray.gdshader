shader_type canvas_item;

float average(vec3 v){
	return (v.r + v.g + v.b) /3.0;
}

void fragment() {
	float grayScale = average(COLOR.rgb);
	COLOR.r = grayScale;
	COLOR.g = grayScale;
	COLOR.b = grayScale;
}
