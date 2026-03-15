shader_type canvas_item;

uniform vec4 flash_color:source_color = vec4(1.0);
uniform float flash_color_mix_val:hint_range(0.0, 1.0) = 0.5;
uniform float flash_interval = 0.5;
uniform bool is_on = false;

void fragment() { 
	if(is_on){
		vec4 originColor = texture(TEXTURE,UV);
		float modInterval = flash_interval * 2.0;
		float modTime =  mod(TIME,modInterval);
		
		if(modTime < flash_interval){
			COLOR = mix(originColor,flash_color,flash_color_mix_val);
			COLOR.a *= originColor.a;
		}
	}
}

