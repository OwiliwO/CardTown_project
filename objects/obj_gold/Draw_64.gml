/// @description Визуализация подсказки

draw_sprite_ext(spr_clue, active_clue_flag, mouse_x + 300, mouse_y + 100, 3, 1, 180, c_white, 1);

var _game_description_text = "здесь показывается определенное количество золота, которое приинадлежит вам, а также ежедневный расход зданий.";
var _text_gold = "золото: " + format_gold(obj_game_manager.player_gold);
var _text_consumption = "расход:" + string(obj_game_manager.player_gold_consumption);


draw_set_color(c_white);
draw_set_font(fnt_main);
draw_set_halign(fa_right);

if (active_clue_flag) {
	draw_text_ext_transformed(mouse_x + 298, mouse_y - 50, _game_description_text, 15, 152 * 2, 1.5, 1.5, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(mouse_x + 298, mouse_y + 40, _text_gold, 1.5, 1.5, 0);
	draw_text_transformed(mouse_x + 298, mouse_y + 60, _text_consumption, 1.5, 1.5, 0);
}








