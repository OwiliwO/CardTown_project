/// @description Изменение шансов событий

// Сброс шансов событий к стандартным
for (var i = 0; i < array_length(obj_event_manager.positive_events); i++) {
    obj_event_manager.positive_events[i].chance = obj_event_manager.positive_events[i].base_chance;
}
for (var i = 0; i < array_length(obj_event_manager.negative_events); i++) {
    obj_event_manager.negative_events[i].chance = obj_event_manager.negative_events[i].base_chance;
}
obj_game_manager.gold_multiplier = 1;

// Определение изменения шанса
with (obj_cell) {	
	if (building_type == 4) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				positive_events[2].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.positive_events); i++) {
			    if (i != 2) {
					obj_event_manager.positive_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
		}
	}
		
	if (building_type == 5) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				positive_events[3].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.positive_events); i++) {
			    if (i != 4) {
					obj_event_manager.positive_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
		}
	}
		
	if (building_type == 6) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				negative_events[4].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.negative_events); i++) {
			    if (i != 4) {
					obj_event_manager.negative_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
		}
	}
		
	if (building_type == 7) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				negative_events[6].chance += global.buildings[other.building_type - 1].daily_power;
				negative_events[1].chance -= global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.negative_events); i++) {
			    if (i != 6 || i != 1) {
					obj_event_manager.negative_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
		}
	}
		
	if (building_type == 8) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				negative_events[2].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.negative_events); i++) {
			    if (i != 2) {
					obj_event_manager.negative_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
		}
	}
		
	if (building_type == 9) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				negative_events[3].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.negative_events); i++) {
			    if (i != 3) {
					obj_event_manager.negative_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
			obj_game_manager.player_content += 20;
		}
	}
		
	if (building_type == 10) {
		if (obj_game_manager.player_gold >= global.buildings[building_type - 1].daily_cost) {
			with (obj_event_manager) {
				positive_events[3].chance += global.buildings[other.building_type - 1].daily_power;
			}
			obj_game_manager.player_gold -= global.buildings[building_type - 1].daily_cost;
		
			for (var i = 0; i < array_length(obj_event_manager.positive_events); i++) {
			    if (i != 3) {
					obj_event_manager.positive_events[i].chance -= global.buildings[building_type - 1].daily_power / 3;
				}
			}
			obj_game_manager.gold_multiplier *= 2;
		}
	}
}

instance_destroy();
