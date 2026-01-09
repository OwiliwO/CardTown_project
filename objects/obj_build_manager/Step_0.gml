/// @description Анимация

y = current_y;

switch (state) {
    case "opening":
        current_y = lerp(current_y, target_y, 0.2);
        if (abs(current_y - target_y) < 1) {
            state = "open";
            current_y = target_y;
        }
    break;
    
    case "closing":
		with (obj_cell) {
	        active_flag = false;
			choice_flag = false;
	    }
        current_y = lerp(current_y, room_height + 100, 0.2);
        if (current_y > room_height + 50) {
            instance_destroy();
        }
    break;
}

