/// @description Логика использования

audio_play_sound(snd_choice_3, 99, 0);
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

with(obj_buttons) {
    if(point_in_rectangle(mx, my, x - 50, y - 25, x + 400, y + 25)) {
        // Обработка нажатия кнопки
        switch(button_id) {
            case 0: obj_menu.transition_state = 1; break;
            case 1: obj_menu.transition_state = 2; break;
            case 2: game_end(); 
			break;
			case 3:
				if (global.VolumeEffects < 1) {
					global.VolumeEffects += 0.1;
				} else {
					global.VolumeEffects = 0;
				}
			break;
			case 4:
				if (global.VolumeMusic < 1) {
					global.VolumeMusic += 0.1;
				} else {
					global.VolumeMusic = 0;
				}
			break;
			case 5: obj_menu.transition_state = 0; break;
        }
    }
}





















