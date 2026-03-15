shader_type canvas_item;
uniform sampler2D noise_texture;
uniform float dissolve_pct:hint_range(0.0, 1.0) = 0.0;
uniform vec4 dissolve_color:source_color = vec4(1.0,0.0,0.0,1.0);
uniform float dissolve_border:hint_range(0.0,1.0) = 0.1;

void fragment() {
	vec4 origin_color = texture(TEXTURE,UV);
	vec4 noise = texture(noise_texture,UV);
	vec4 final_color = origin_color;
	
	if(dissolve_pct >= noise.r){
		final_color.a = 0.0;
	}else if(dissolve_pct + dissolve_border >= noise.r && origin_color.a != 0.0){
		final_color = dissolve_color;
	}
	
	COLOR = final_color;
}