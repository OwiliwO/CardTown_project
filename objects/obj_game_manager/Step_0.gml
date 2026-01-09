/// @description Начисление золота

if (player_gold < 0) player_gold = 0;
if (player_content < 0) player_content = 0;

gold_counter++;
if (gold_counter >= gold_interval) {
    player_gold += gold_multiplier;
    gold_counter = 0;
}

if ((type_target == "стандарт" && player_content >= target_content) ||
	(type_target == "золотая лихорадка" && player_mines >= target_mine) ||
	(type_target == "драконоборство" && obj_event_manager.negative_events[1].chance <= 0) && !game_end_flag_prev) {
	obj_time_manager.time_speed = infinity;
	gold_interval = infinity;
	game_end_flag_prev = true;
}

if (event_flag) {
    fade_timer++;
    
    switch (fade_state) {
        case 0: // Фаза появления
            alpha = fade_timer / fade_duration;
            if (fade_timer >= fade_duration) {
                fade_timer = 0;
                fade_state = 1;
            }
            break;
            
        case 1: // Удержание на экране
            alpha = 1;
            if (fade_timer >= hold_duration) {
                fade_timer = 0;
                fade_state = 2;
            }
            break;
            
        case 2: // Фаза затухания
            alpha = 1 - (fade_timer / fade_duration);
            if (fade_timer >= fade_duration) {
                event_flag = false;
                fade_state = 0;
                fade_timer = 0;
            }
            break;
    }
}

if ((defeat_flag || (type_target == "стандарт" && player_content >= target_content) ||
	(type_target == "золотая лихорадка" && player_mines >= target_mine) ||
	(type_target == "драконоборство" && obj_event_manager.negative_events[1].chance <= 0)) && !game_end_flag) {
    fade_timer++;
	
    switch (fade_state) {
        case 0: // Фаза появления
            alpha = fade_timer / fade_duration;
            if (fade_timer >= fade_duration) {
                fade_timer = 0;
                fade_state = 1;
            }
            break;
            
        case 1: // Удержание на экране
            alpha = 1;
            game_end_flag = true;
			alarm[0] = 120;
            break;
		
    }
}


