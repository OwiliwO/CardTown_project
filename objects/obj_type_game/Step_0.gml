/// @description Настройка выбора режима карты

hover_scale = lerp(hover_scale, target_scale, scale_speed);
if (go_to_next_flag) {
	active_clue_flag = false;
	current_card_y = lerp(current_card_y, current_card_target_y, card_speed);
}

if (obj_menu.transition_state == 1) {
	image_index = current_type;
} else image_index = 0;


















