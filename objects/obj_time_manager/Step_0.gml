/// @description Обновление игрвого времени
frame_counter++;
if (frame_counter >= time_speed) {
    frame_counter = 0;
    game_minutes++;
    
    if (game_minutes >= 60) {
        game_minutes = 0;
        game_hours++;
        
        if (game_hours >= 24) {
            game_hours = 0;
			game_days++;
        }
    }
}

