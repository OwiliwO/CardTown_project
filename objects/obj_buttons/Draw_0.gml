/// @description Визуализация

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var scale_diff = current_scale - 1.0;
var offset_x = (sprite_width * scale_diff) / 2;
var offset_y = (sprite_height * scale_diff) / 2;

var _g_and_b_1 = 255 - floor(global.VolumeEffects * 255);
var _g_and_b_2 = 255 - floor(global.VolumeMusic * 255);

// Фон кнопки
draw_sprite_ext(
	spr_buttons, 
	image_index, 
	x - offset_x - 130, y - offset_y, 
	current_scale, current_scale, 
	0, 
	c_white, 
	1
);

if (button_id == 3) {
	draw_sprite_ext(
	    spr_buttons, 
	    image_index, 
	    x - offset_x - 130, y - offset_y, 
	    current_scale, current_scale, 
	    0, 
	    make_color_rgb(255, 255, _g_and_b_1), 
	    1
	);
}
if (button_id == 4) {
	draw_sprite_ext(
	    spr_buttons, 
	    image_index, 
	    x - offset_x - 130, y - offset_y, 
	    current_scale, current_scale, 
	    0, 
	    make_color_rgb(255, 255, _g_and_b_2), 
	    1
	);
}



