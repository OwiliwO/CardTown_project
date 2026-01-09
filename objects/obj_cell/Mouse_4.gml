/// @description Выбор меню строительства

if (!instance_exists(obj_build_manager) && building_type == 0 && curse_flag == false) {
	target_scale = max_scale;
	choice_flag = true;
	with (obj_cell) {
        active_flag = false;
    }
	
	var menu = instance_create_layer(x, y, "UI", obj_build_manager);
    menu.target_cell = id; // Передаем ссылку на клетку в меню
	menu.state = "opening";
	active_flag = true;
}
else {
    instance_destroy(obj_build_manager);
}








