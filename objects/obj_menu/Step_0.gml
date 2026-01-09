/// @description Плавность

if (transition_state == 0) {
	
	current_h5_y = lerp(current_h5_y, current_h5_start_y, logo_speed);
	current_info_y = lerp(current_info_y, current_info_start_y, logo_speed);
	
	for(var i = 3; i < 6; i++) {
	    if(!instance_exists(buttons[i])) continue;
    
	    buttons[i].y = lerp(buttons[i].y, buttons_start_y, buttons_speed);
	}
}

if (transition_state == 1) {
	current_logo_y = lerp(current_logo_y, logo_start_y, logo_speed);
	
	current_h5_y = lerp(current_h5_y, current_h5_target_y, logo_speed);
	current_info_y = lerp(current_info_y, current_info_target_y, logo_speed);
	
	for(var i = 0; i < 3; i++) {
	    if(!instance_exists(buttons[i])) continue;
    
	    buttons[i].y = lerp(buttons[i].y, buttons_start_y, buttons_speed);
	}
}

if (transition_state == 2) {
	for(var i = 0; i < 3; i++) {
	    if(!instance_exists(buttons[i])) continue;
    
	    buttons[i].y = lerp(buttons[i].y, buttons_start_y, buttons_speed);
	}
	for(var i = 3; i < 6; i++) {
	    if(!instance_exists(buttons[i])) continue;
    
	    var target_y = buttons_target_y + (i * button_spacing) - 150;
	    buttons[i].y = lerp(buttons[i].y, target_y, buttons_speed);
	}
}

if (active_flag) {
	current_logo_y = lerp(current_logo_y, logo_target_y, logo_speed);

	for(var i = 0; i < 3; i++) {
	    if(!instance_exists(buttons[i])) continue;
    
	    var target_y = buttons_target_y + (i * button_spacing);
	    buttons[i].y = lerp(buttons[i].y, target_y, buttons_speed);
	}
}


if (obj_type_game.go_to_next_flag) {
	current_h5_y = lerp(current_h5_y, -2000, logo_speed);
	current_info_y = lerp(current_info_y, -2000, logo_speed);
}