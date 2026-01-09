/// @description Изменение размера

function start_shake(dur, int) {
    shake_flag = true;
    shake_duration = dur;
    shake_intensity = int;
}

if (shake_flag) {
    // Уменьшаем продолжительность
    shake_duration--;
    
    if (shake_duration > 0) {
        // Увеличиваем интенсивность до максимума, затем уменьшаем
        if (shake_duration > 15) {
            shake_intensity = min(shake_intensity + shake_speed, shake_max_intensity);
        } else {
            shake_intensity = max(shake_intensity - shake_speed, 0);
        }
        
        // Случайное смещение в пределах интенсивности
        shake_offset_x = random_range(-shake_intensity, shake_intensity);
        shake_offset_y = random_range(-shake_intensity, shake_intensity);
    } else {
        // Завершение эффекта
        shake_flag = false;
        shake_intensity = 0;
        shake_offset_x = 0;
        shake_offset_y = 0;
    }
}

current_cell_y = lerp(current_cell_y, current_cell_target_y, cell_speed);

hover_scale = lerp(hover_scale, target_scale, scale_speed);

if (building_type != 0 && !curse_flag) {
	sprite_index = spr_buildings;
	image_index = building_type - 1;
}

if (curse_flag) {
	sprite_index = spr_cell;
	image_index = 0;
}