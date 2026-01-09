/// @description Визуализация меню построек

if (state != "closed") {
    
    var icon_size = 162;          // Размер иконки
    var padding = 20;            // Отступ между иконками
    var hover_padding = 5;      // Отступ для подсветки
	var total_width = (icon_size * array_length(global.buildings)) + (padding * (array_length(global.buildings) - 1));
    var start_draw_x = (room_width - total_width) / 2;
    
	var text_padding = 5;       // Отступ текста от краев
    var line_spacing = 20;      // Расстояние между строками
	
    for (var i = 0; i < array_length(global.buildings); i++) {
		
		// Рассчитываем позицию
        var icon_x = start_draw_x + (icon_size + padding) * i;
        var icon_y = current_y - 200;
        
        // Проверяем наведение
        var mouse_gui_x = device_mouse_x_to_gui(0);
        var mouse_gui_y = device_mouse_y_to_gui(0);
        var is_hover = point_in_rectangle(mouse_gui_x, mouse_gui_y, 
            icon_x - hover_padding, 
            icon_y - hover_padding, 
            icon_x + icon_size + hover_padding, 
            icon_y + icon_size + hover_padding + 100);
		
		// Рисуем подсветку при наведении
        if (is_hover) {
			draw_sprite_ext(spr_buildings, 10,
                      icon_x, icon_y, 
                      1, 
                      1, 
                      0, c_white, 1);
            
            // Рисуем подсказку
            draw_set_color(c_white);
            draw_set_halign(fa_center);
            var text_y = icon_y + icon_size;
            // Название
            draw_text_transformed(icon_x + icon_size/2, text_y - 143, global.buildings[i].name, 1.5, 1.5, 0);
			draw_set_halign(fa_left);
            // Стоимость
			draw_set_color(c_yellow);
            draw_text_transformed(icon_x + icon_size/2 - 60, text_y - 113, "цена: " + string(global.buildings[i].cost), 1.5, 1.5, 0);
			// Количество жителей
            draw_text_transformed(icon_x + icon_size/2 - 60, text_y - 90, "жители: " + string(global.buildings[i].content), 1.5, 1.5, 0);
			// Расход
			draw_text_transformed(icon_x + icon_size/2 - 60, text_y - 70, "трата: " + string(global.buildings[i].daily_cost), 1.5, 1.5, 0);
			// Описание
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text_ext(icon_x + icon_size/2, text_y - 45, global.buildings[i].description, 15, 120);
			
        } else {
		
			draw_sprite_ext(spr_buildings, global.buildings[i].frame - 1,
	                      icon_x, icon_y, 
	                      1, 
	                      1, 
	                      0, c_white, 1);
		}
		
    }
	
    // Сброс настроек рисования
    draw_set_halign(fa_left);
    draw_set_color(c_white);
}
