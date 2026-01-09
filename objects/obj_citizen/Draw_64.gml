/// @description Визуализация подсказки

if (!instance_exists(obj_build_manager)) {
	draw_sprite_ext(spr_clue, active_clue_flag, mouse_x + 300, mouse_y + 100, 3, 1, 180, c_white, 1);

	var _game_description_text = "здесь показывается определенное количество жителей, которые находятся в вашем поселении, а также текущая цель партии.";
	var _text_content = "жители: " + string(obj_game_manager.player_content);
	var _text_target_content = "";
	if (obj_game_manager.type_target == "стандарт") _text_target_content = "цель: " + string(obj_game_manager.target_content) + " жителей";
	if (obj_game_manager.type_target == "бесконечность") _text_target_content = "цель: бесконечность";
	if (obj_game_manager.type_target == "золотая лихорадка") _text_target_content = "цель: " + string(obj_game_manager.target_mine) + " шахт";
	if (obj_game_manager.type_target == "драконоборство") _text_target_content = "цель: нулевой шанс (атака драконов)";

	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_set_halign(fa_right);

	if (active_clue_flag) {
		draw_text_ext_transformed(mouse_x + 298, mouse_y - 50, _game_description_text, 15, 152 * 2, 1.5, 1.5, 0);
		draw_set_color(c_yellow);
		draw_text_transformed(mouse_x + 298, mouse_y + 40, _text_content, 1.5, 1.5, 0);
		draw_text_transformed(mouse_x + 298, mouse_y + 60, _text_target_content, 1.5, 1.5, 0);
	}
}









