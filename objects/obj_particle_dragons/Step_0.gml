/// @description Движение по диагонали
x += lengthdir_x(move_speed, move_angle);
y += lengthdir_y(move_speed, move_angle);

// Дрожание камеры
if (shake_duration > 0) {
    shake_duration--;
    var _xshake = random_range(-shake_intensity, shake_intensity);
    var _yshake = random_range(-shake_intensity, shake_intensity);
    camera_set_view_pos(camera_default, 
        view_xport[0] + _xshake, 
        view_yport[0] + _yshake
    );
} else {
    camera_set_view_pos(camera_default, view_xport[0], view_yport[0]);
}

// Уничтожение при достижении верхней трети экрана
if (y < -room_height) {
    instance_destroy();
}


