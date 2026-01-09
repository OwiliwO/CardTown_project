/// @description Визуализация подсказки

draw_sprite_ext(spr_clue, active_clue_flag, mouse_x + 300, mouse_y + 100, 3, 1, 180, c_white, 1);

var _game_description_text = "часы показывают точное время, а также количество прошедших дней. функциональные 1, 2 и 3 - ускорение времени.";
var _game_minutes_text = "";
var _game_hours_text = "";
if (obj_time_manager.game_minutes <= 9) _game_minutes_text = "0";
if (obj_time_manager.game_hours <= 9) _game_hours_text = "0";
var time_string = "время: " + _game_hours_text + string_format(obj_time_manager.game_hours, 1, 0) + ":" + _game_minutes_text + string_format(obj_time_manager.game_minutes, 1, 0);
var day_string = "текущий день: " + ordinal_day_string(obj_time_manager.game_days);

draw_set_color(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_right);

if (active_clue_flag) {
	draw_text_ext_transformed(mouse_x + 298, mouse_y - 50, _game_description_text, 15, 152 * 2, 1.5, 1.5, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(mouse_x + 298, mouse_y + 40, time_string, 1.5, 1.5, 0);
	draw_text_transformed(mouse_x + 298, mouse_y + 60, day_string, 1.5, 1.5, 0);
}


