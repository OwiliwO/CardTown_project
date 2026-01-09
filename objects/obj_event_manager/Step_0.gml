/// @description Исход события
randomize();

function select_weighted_random(event_array) {
    var total = 0;
    for (var i = 0; i < array_length(event_array); i++) {
        total += event_array[i].chance;
    }
    
    var roll = irandom(total - 1);
    var current = 0;
    
    for (var i = 0; i < array_length(event_array); i++) {
        current += event_array[i].chance;
        if (roll < current) {
			current_event_active = event_array[i].name;
			current_description_event_active = event_array[i].description;
			current_duration_event_active = event_array[i].duration;
			current_obj_event_active = event_array[i].obj;
			return event_array[i].obj;
		}
    }
	current_event_active = event_array[0].name;
	current_description_event_active = event_array[0].description;
	current_duration_event_active = event_array[0].duration;
	current_obj_event_active = event_array[0].obj;
    return event_array[0].obj;
}

// Создание события
if (obj_time_manager.game_hours == 1 && obj_time_manager.game_minutes == 0 && !event_active) {
    obj_game_manager.event_flag = true;
	if (choose_chance(positive_percent)) {
        var _event = select_weighted_random(positive_events);
    } else {
        var _event = select_weighted_random(negative_events);
    }
	instance_create_layer(0, 0, "Events", _event);
    event_active = true;
	event_duration_active = true;
}

// Создание изменения шанса
if (obj_time_manager.game_hours == 0 && obj_time_manager.game_minutes == 15 && change_chance_active == false) {
	change_chance_active = true;
	instance_create_layer(0, 0, "UI", obj_change_chances_manager);
}

// Сброс флага при смене дня
if (obj_time_manager.game_hours == 0 && obj_time_manager.game_minutes == 0 && event_duration_active == true) {
	
	if (current_duration_event_active == 1) {
		event_active = false;
		event_duration_active = false;
		
		if (current_event_active == "индексация цен" && instance_exists(obj_indexing_event)) {
			instance_destroy(obj_indexing_event);
		}
	}
	if (current_duration_event_active > 1) {
		instance_create_layer(0, 0, "Events", current_obj_event_active);
		event_duration_active = false;
		current_duration_event_active--;
	}
	if (obj_time_manager.game_days >= 4) {
		//audio_play_sound(snd_land_curse_event, 96, 0);
		var cells_to_destroy = 5;

		var available_cells = [];
		with (obj_cell) {
			array_push(available_cells, id);
		}
		if (array_length(available_cells) > 5) {
			var num_to_destroy = min(cells_to_destroy, array_length(available_cells));
			for (var i = 0; i < num_to_destroy; i++) {
			    var index = irandom(array_length(available_cells) - 1);
			    with (available_cells[index]) {
					start_shake(10, 10);
			        instance_destroy();
			    }
			    array_delete(available_cells, index, 1);
			}
		} else {
			obj_game_manager.defeat_flag = true;
			obj_game_manager.gold_interval = 0;
			obj_time_manager.time_speed = 0;
		}
		
		
	}
	
	change_chance_active = false;
}