/// @description Выбор постройки

if (instance_exists(obj_build_manager)) {
    var menu = instance_find(obj_build_manager, 0);
	if (menu.state == "open") {
        var _mx = device_mouse_x_to_gui(0);
        var _my = device_mouse_y_to_gui(0);
        var button_spacing = (menu.menu_width - (menu.button_width * array_length(global.buildings))) / (array_length(global.buildings) + 1);
        
        for (var i = 0; i < array_length(global.buildings); i++) {
            var btn_x = menu.start_x + button_spacing + (menu.button_width + button_spacing - 5) * i;
            var btn_y = menu.current_y;
			
            if (_mx > btn_x && _mx < btn_x + menu.button_width 
            && _my > btn_y - 300 && _my < btn_y + menu.button_height) 
            {
				// Обработка клика
                if (obj_game_manager.player_gold >= global.buildings[i].cost 
                && menu.target_cell.building_type == 0) 
                {
                    if (global.buildings[i].name == "шахта") obj_game_manager.player_mines++;
					obj_game_manager.player_gold -= global.buildings[i].cost;
					obj_game_manager.player_content += global.buildings[i].content;
					obj_game_manager.player_gold_consumption += global.buildings[i].daily_cost;
                    menu.target_cell.building_type = global.buildings[i].frame;
					menu.target_cell.current_content = global.buildings[i].content;
					menu.target_cell.target_scale = menu.target_cell.normal_scale;
					menu.target_cell.current_consumption = global.buildings[i].daily_cost;
					menu.target_cell.image_blend = c_white;
					menu.target_cell.image_alpha = 1;
					audio_play_sound(snd_building, 98, 0);
					state = "closing";
                }
                break;
            }
        }
    }
}







