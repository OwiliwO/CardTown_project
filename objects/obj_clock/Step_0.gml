/// @description Ход времени

image_index = obj_time_manager.game_hours - 1;

var mouse_over = position_meeting(mouse_x, mouse_y, id);

target_offset = mouse_over ? hover_amount : 0;
hover_offset = lerp(hover_offset, target_offset, hover_speed);



