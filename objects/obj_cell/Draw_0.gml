/// @description Центрирование

var base_x = x;
var base_y = current_cell_target_y;

// Применяем смещение для дергания
if (shake_flag) {
    x += shake_offset_x;
    y += shake_offset_y;
}

var scale_diff = hover_scale - 1.0;
var offset_x = (base_width * scale_diff) / 2;
var offset_y = (base_height * scale_diff) / 2;

// Рисуем с измененным масштабом
draw_sprite_ext(
    sprite_index, 
    image_index, 
    x - offset_x, 
    current_cell_y - offset_y, 
    hover_scale, 
    hover_scale, 
    rotation_angle, 
    image_blend, 
    image_alpha
);


x = base_x;
y = base_y;
