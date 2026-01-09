/// @description Начальные данные

hover_scale = 1.0;          // Текущий масштаб
target_scale = 1.0;         // Целевой масштаб
scale_speed = 0.1;          // Скорость изменения масштаба
max_scale = 1.2;            // Максимальный масштаб при наведении
normal_scale = 1.0;         // Обычный масштаб
base_width = sprite_width;  // Сохраняем оригинальные размеры
base_height = sprite_height;

image_index = 0;
active_clue_flag = false;


current_card_start_y = y;
current_card_target_y = -400;
current_card_y = current_card_start_y;
card_speed = 0.05;

go_to_next_flag = false;