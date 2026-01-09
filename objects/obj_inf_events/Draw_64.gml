/// @description Визуализация информации

draw_sprite_ext(spr_clue, active_clue_flag, mouse_x + 250, mouse_y + 100, 5, 1, 180, c_white, 1);

var _game_description_text = "здесь показывается вся необходимая информация о текущем событии";
var _text_event = "событие: " + obj_event_manager.current_event_active;
var _text_event_description = obj_event_manager.current_description_event_active;
var _text_event_duration = "продолжительность: " + string(obj_event_manager.current_duration_event_active);

draw_set_color(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_right);

if (active_clue_flag) {
	draw_text_ext_transformed(mouse_x + 248, mouse_y - 50, _game_description_text, 15, 152 * 2, 1.5, 1.5, 0);
	if (obj_event_manager.current_event_active != "") {
		draw_set_color(c_yellow);
		draw_text_transformed(mouse_x + 248, mouse_y, _text_event, 1.5, 1.5, 0);
		draw_set_color(c_white);
		draw_text_ext_transformed(mouse_x + 248, mouse_y + 20, _text_event_description, 15, 152 * 3.5, 1.5, 1.5, 0);
		draw_set_color(c_yellow);
		draw_text_transformed(mouse_x + 248, mouse_y + 70, _text_event_duration, 1.5, 1.5, 0);
	}
}