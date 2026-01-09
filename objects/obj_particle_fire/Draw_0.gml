/// @description Орисовка свечения

if (fire_intensity > 0.3) {
    draw_set_color(make_color_rgb(255, 100, 0));
    draw_set_alpha(0.3 * fire_intensity);
    draw_circle(cell_id.x, cell_id.y, 50, false);
    draw_set_alpha(1);
}









