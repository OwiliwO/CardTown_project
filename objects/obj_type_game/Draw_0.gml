/// @description Центрирование

var scale_diff = hover_scale - 1.0;
var offset_x = (base_width * scale_diff) / 2;
var offset_y = (base_height * scale_diff) / 2;

// Рисуем с измененным масштабом
draw_sprite_ext(
    sprite_index, 
    image_index, 
    x - offset_x, 
    current_card_y - offset_y, 
    hover_scale, 
    hover_scale, 
    0, 
    image_blend, 
    image_alpha
);

if (active_clue_flag && obj_menu.transition_state == 1 && image_index != 5) {
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
	
	draw_sprite_ext(spr_clue, active_clue_flag, mouse_x - 10, mouse_y + 130, 1.5, 2, 180, c_white, 1);
	var _game_title_text = "";
	var _game_description_text = "";
	
	if (image_index == 1) {
		_game_title_text = "стандарт";
		_game_description_text = "стандартный режим, цель которого достичь 500 жителей в свем поселении.";
		draw_set_color(c_white);
		draw_text_ext_transformed(mouse_x - 124, mouse_y - 70, _game_description_text, 15, 152, 1.5, 1.5, 0);
	}
	if (image_index == 2) {
		_game_title_text = "бесконечность";
		_game_description_text = "режим, в котором нет конечной цели.";
		draw_set_color(c_white);
		draw_text_ext_transformed(mouse_x - 124, mouse_y - 105, _game_description_text, 15, 152, 1.5, 1.5, 0);
	}
	if (image_index == 3) {
		_game_title_text = "золотая лихорадка";
		_game_description_text = "режим, цель которого хастроить 10 клеток шахтамии.";
		draw_set_color(c_white);
		draw_text_ext_transformed(mouse_x - 124, mouse_y - 85, _game_description_text, 15, 152, 1.5, 1.5, 0);
	}
	if (image_index == 4) {
		_game_title_text = "драконоборство";
		_game_description_text = "режим, цель которого любыми способами понизить шанс события (атака драконов) до 0.";
		draw_set_color(c_white);
		draw_text_ext_transformed(mouse_x - 124, mouse_y - 60, _game_description_text, 15, 152, 1.5, 1.5, 0);
	}
	
	draw_set_color(c_yellow);
	draw_text_transformed(mouse_x - 124, mouse_y - 140, _game_title_text, 1.5, 1.5, 0);
}

if (obj_menu.transition_state == 1 && image_index != 5 && !go_to_next_flag) {
	draw_set_color(c_yellow);
	draw_text_ext_transformed(x + 85, y - offset_y + 330, global.Records[image_index - 1], 15, 200, 1.5, 1.5, 0);
}

draw_set_color(c_white);
















