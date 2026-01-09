/// @description Плавность

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if(point_in_rectangle(mx, my, x - 50, y - 25, x + 400, y + 25)) {
    current_scale = lerp(current_scale, hover_scale, 0.2);
} else {
    current_scale = lerp(current_scale, normal_scale, 0.2);
}
















