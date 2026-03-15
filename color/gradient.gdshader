shader_type canvas_item;

uniform sampler2D gradient_texture;

float getGrayscale(vec4 v){
	return (v.r + v.g + v.b) /3.0;
}

void fragment() {
	vec4 originColor = texture(TEXTURE,UV);
	float grayscale = getGrayscale(originColor);
	vec4 gradientColor = texture(gradient_texture,vec2(grayscale,grayscale));
	COLOR = gradientColor;
	COLOR.a = originColor.a;
}
