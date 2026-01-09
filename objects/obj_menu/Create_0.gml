/// @description Начальные данные

active_flag = false;
logo_start_y = -2000; // Начальная позиция логотипа (над экраном)
logo_target_y = 0; // Целевая позиция логотипа
logo_speed = 0.05;   // Скорость движения логотипа
current_logo_y = logo_start_y;
global.TypeGame = "";

current_h5_start_y = 0;
current_h5_target_y = 150;
current_h5_y = current_h5_start_y;

current_info_start_y = 1500;
current_info_target_y = 700;
current_info_y = current_info_start_y;

buttons_start_y = room_height + 500; // Начальная позиция кнопок (под экраном)
buttons_target_y = 740;              // Базовая позиция первой кнопки
button_spacing = 60;                 // Расстояние между кнопками
buttons_speed = 0.08;                // Скорость движения кнопок

transition_state = 0;
transition_speed = 0.08; // Скорость перехода

buttons = [];
for(var i = 0; i < 7; i++) {
    buttons[i] = instance_create_depth(
        room_width / 2 - 200, 
        buttons_start_y, 
        -100, 
        obj_buttons
    );
    
    // Настраиваем кнопки (пример)
    with(buttons[i]) {
        switch(i) {
            case 0: image_index = 0; break;
            case 1: image_index = 1; break;
            case 2: image_index = 2; break;
            case 3: image_index = 3; break;
			case 4: image_index = 4; break;
			case 5: image_index = 5; break;
        }
        button_id = i;
    }
}

alarm[0] = 30;

















