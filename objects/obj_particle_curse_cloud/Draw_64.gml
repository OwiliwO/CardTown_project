/// @description Отрисовка дымки

// Рисуем фиолетовую дымку
draw_set_color(haze_color);
draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Если используем поверхность с частицами:
if (overlay_surface != -1 && surface_exists(overlay_surface)) {
    draw_surface(overlay_surface, 0, 0);
}








