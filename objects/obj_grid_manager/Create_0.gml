/// @description Создание сетки

n_rows = 3;     // Количество строк
n_cols = 6;     // Количество столбцов
// Размер клетки в пикселях
cell_size_width = 162;
cell_size_height = 266;
// Отступы между клетками
padding_x = 10;  // Горизонтальный отступ
padding_y = 5;  // Вертикальный отступ

var total_width = n_cols * cell_size_width + (n_cols - 1) * padding_x;
var total_height = n_rows * cell_size_height + (n_rows - 1) * padding_y;
start_x = ((room_width - total_width) / 2) - 7;
start_y = ((room_height - total_height) / 2) - 90;

// Создаем сетку
for (var i = 0; i < n_rows; i++) {
    for (var j = 0; j < n_cols; j++) {
        // Рассчитываем позицию
        var xx = start_x + j * (cell_size_width + padding_x);
        var yy = start_y + i * (cell_size_height + padding_y);
        
        // Создаем клетку и передаем ей координаты сетки
        var cell = instance_create_layer(xx, yy, "Cells", obj_cell);
        cell.grid_x = j;
        cell.grid_y = i;
    }
}






