/// @description Визуализация времени и скорости

var _x = room_width - 160; // Отступ от правого края
var _y = 32;               // Отступ сверху

// Форматирование времени с ведущими нулями
var _game_minutes_text = "";
var _game_hours_text = "";
if (game_minutes <= 9) _game_minutes_text = "0";
if (game_hours <= 9) _game_hours_text = "0";
var time_string = _game_hours_text + string_format(game_hours, 1, 0) + ":" + _game_minutes_text + string_format(game_minutes, 1, 0);
var day_string = ordinal_day_string(game_days);

// Рисуем текст
//draw_set_color(c_white);
//draw_set_font(fnt_main);
//draw_set_halign(fa_right);
//// День и ночь
//draw_sprite(spr_cycle_day_night, game_hours, 30, _y - 10);
//draw_text_transformed(100, _y + 100, time_string, 1, 1, 0);
//// Количество дней
//draw_text_transformed(198, _y + 100, day_string, 1, 1, 0);
//// Скорость игры
//draw_sprite(spr_speed_game, convert_number(time_speed), 52, _y + 145);

