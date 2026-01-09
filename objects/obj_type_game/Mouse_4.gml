/// @description Выбор

if (current_type == 1) {
	with (obj_type_game) { go_to_next_flag = true; }
	alarm[0] = 60;
	alarm[1] = 140;
	global.TypeGame = "стандарт";
}

if (current_type == 2) {
	with (obj_type_game) { go_to_next_flag = true; }
	alarm[0] = 60;
	alarm[1] = 140;
	global.TypeGame = "бесконечность";
}

if (current_type == 3) {
	with (obj_type_game) { go_to_next_flag = true; }
	alarm[0] = 60;
	alarm[1] = 140;
	global.TypeGame = "золотая лихорадка";
}

if (current_type == 4) {
	with (obj_type_game) { go_to_next_flag = true; }
	alarm[0] = 60;
	alarm[1] = 140;
	global.TypeGame = "драконоборство";
}

if (current_type == 5) {
	obj_menu.transition_state = 0;
}




















