/// @description Инициализация построек

target_cell = noone; // Клетка для строительства
menu_width = 1920;    // Ширина меню
button_height = 60;  // Высота кнопки 40
button_width = 162;   // Ширина одной кнопки 80
state = "closed";    // Состояние
animation_speed = 15;// Скорость анимации
y_offset = 0;        // Смещение для анимации

start_x = (room_width - menu_width) / 2; // Центрируем по горизонтали
target_y = room_height - button_height - 20; // Финишная позиция Y
current_y = room_height; // Начальная позиция
y = current_y;
