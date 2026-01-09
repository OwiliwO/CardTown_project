/// @description Закрытие всех меню
if (instance_exists(obj_build_manager) && obj_build_manager.state == "open") {
    if (point_in_rectangle(mouse_x, mouse_y, 0, 0, 1980, 750)) {
        
        obj_build_manager.state = "closing";
		with (obj_cell) {
			target_scale = normal_scale;
		}
    }
}








