/// @description Инициализация клетки
randomize();

rotation_angle = random_range(-5, 5); // От -5 до 5 градусов

current_cell_start_y = -1000;
current_cell_target_y = y;
current_cell_y = current_cell_start_y;
cell_speed = 0.05;
y = current_cell_start_y;

shake_flag = false;          // Флаг для запуска дергания
shake_intensity = 0;         // Текущая интенсивность дергания
shake_duration = 0;          // Продолжительность эффекта
shake_max_intensity = 10;    // Максимальное смещение (пиксели)
shake_speed = 0.5;           // Скорость затухания эффекта
shake_offset_x = 0;          // Текущее смещение X
shake_offset_y = 0;          // Текущее смещение Y

hover_scale = 1.0;          // Текущий масштаб
target_scale = 1.0;         // Целевой масштаб
scale_speed = 0.1;          // Скорость изменения масштаба
max_scale = 1.2;            // Максимальный масштаб при наведении
normal_scale = 1.0;         // Обычный масштаб
base_width = sprite_width;  // Сохраняем оригинальные размеры
base_height = sprite_height;

image_index = 0;
image_speed = 0;

building_type = 0;
tree_type = irandom_range(0, 2);

choice_flag = false;
curse_flag = false;
current_content = 0;
current_consumption = 0;

if (curse_flag == false) {
	sprite_index = spr_trees_normal;
	image_index = tree_type;
}
else image_index = 1;

grid_x = 0;
grid_y = 0;

// Размер клетки = размер спрайта
width = 162;
height = 266;
