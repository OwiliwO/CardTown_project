/// @description Фон под клетками

var padding = 16; // Выступ за пределы сетки
var cell_size = 64; // Должен совпадать с размером клетки
var _n_cols = n_cols;     // Количество столбцов
var _n_rows = n_rows;     // Количество строк
var custom_color_normal = make_color_rgb(108, 116, 43);
var custom_color = make_color_rgb(71, 76, 28);
var custom_color_shadow = make_color_rgb(85, 64, 27);

// Рассчитываем размеры сетки
var grid_width = _n_cols * cell_size;
var grid_height = _n_rows * cell_size;

// Рассчитываем позицию фона
var bg_x = start_x;
var bg_y = start_y;
var bg_width = grid_width - 1;
var bg_height = grid_height + padding;

// Рисуем фон
//draw_set_color(custom_color_shadow);
//draw_rectangle(bg_x, bg_y, bg_x + bg_width + 10, bg_y + bg_height, false);
//draw_set_color(custom_color_shadow);
//draw_rectangle(bg_x, bg_y, bg_x + bg_width, bg_y + bg_height, false);
//draw_set_color(custom_color_normal);
//draw_rectangle(bg_x, bg_y, bg_x + bg_width, bg_y + bg_height - padding, false);









