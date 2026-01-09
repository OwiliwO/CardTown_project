/// @description Визуализация золота, жителей, их расхода, событий и конца игры

// Рисуем текст
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

if (event_flag) {
	draw_sprite_ext(spr_end_game, 0, 0, 0, 1, 1, 0, c_white, alpha);
	draw_set_alpha(alpha);
	draw_text_ext_transformed(950, 750, obj_event_manager.current_event_active, 15, 200, 3.5, 3.5, 0);
}

if (defeat_flag) {
	draw_sprite_ext(spr_end_game, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_text_ext_transformed(950, 750, "ваш мир разрушен", 10, 200, 3.5, 3.5, 0);
}

if ((type_target == "стандарт" && player_content >= target_content) ||
	(type_target == "золотая лихорадка" && player_mines >= target_mine) ||
	(type_target == "драконоборство" && obj_event_manager.negative_events[1].chance <= 0)) {
	
	draw_sprite_ext(spr_end_game, 0, 0, 0, 1, 1, 0, c_white, alpha);
	draw_set_alpha(alpha);
	draw_text_ext_transformed(950, 750, "вы достигли пика развития", 10, 200, 3.5, 3.5, 0);
	draw_set_color(c_yellow);
	draw_text_ext_transformed(350, 750, "накопленное золото: " + string(player_gold), 10, 200, 2.5, 2.5, 0);
	draw_text_ext_transformed(350, 785, "ежедневный расход: " + string(player_gold_consumption), 10, 200, 2.5, 2.5, 0);
	draw_text_ext_transformed(1550, 750, "количество дней: " + string(obj_time_manager.game_days), 10, 200, 2.5, 2.5, 0);
	var _game_minutes_text = "";
	var _game_hours_text = "";
	if (obj_time_manager.game_minutes <= 9) _game_minutes_text = "0";
	if (obj_time_manager.game_hours <= 9) _game_hours_text = "0";
	var time_string = _game_hours_text + string_format(obj_time_manager.game_hours, 1, 0) + ":" + _game_minutes_text + string_format(obj_time_manager.game_minutes, 1, 0);
	draw_text_ext_transformed(1550, 785, "точное время: " + time_string, 10, 200, 2.5, 2.5, 0);
}



draw_set_alpha(1);









