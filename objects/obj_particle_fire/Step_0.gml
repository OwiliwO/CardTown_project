/// @description Процесс возникновения часиц

// Обновляем прогресс горения
burn_progress = min(burn_progress + 0.04, 1.0);

// Управление интенсивностью
if (burn_progress < 0.3) {
    fire_intensity = min(fire_intensity + 0.5, 1.0); // Нарастание огня
} else if (burn_progress > 0.7) {
    fire_intensity = max(fire_intensity - 0.4, 0); // Затухание
}

// Эмиссия частиц
if (instance_exists(cell_id)) {
    // Регулируем количество частиц в зависимости от интенсивности
    part_emitter_stream(particleSystem, fireEmitter, fireParticle, 5 * fire_intensity);
    part_emitter_stream(particleSystem, sparkEmitter, sparkParticle, 5 * fire_intensity);
    part_emitter_stream(particleSystem, ashEmitter, ashParticle, 3 * fire_intensity);
    
    // Обновляем позицию эмиттеров
    var cell_x = cell_id.x;
    var cell_y = cell_id.y;
    var cell_w = cell_id.sprite_width;
    var cell_h = cell_id.sprite_height;
    
    // Пламя в центре, искры по краям, пепел по всей площади
    part_emitter_region(particleSystem, fireEmitter, 
        cell_x, cell_x + cell_w, 
        cell_y, cell_y + cell_h, 
        ps_shape_ellipse, ps_distr_gaussian);
    
    part_emitter_region(particleSystem, sparkEmitter, 
        cell_x, cell_x + cell_w, 
        cell_y, cell_y + cell_h, 
        ps_shape_ellipse, ps_distr_linear);
    
    part_emitter_region(particleSystem, ashEmitter, 
        cell_x, cell_x + cell_w, 
        cell_y, cell_y + cell_h, 
        ps_shape_rectangle, ps_distr_linear);
    
    // Визуальный эффект на клетке
    cell_id.image_blend = merge_color(c_white, c_red, burn_progress * 0.5);
    cell_id.image_alpha = 1.0 - burn_progress * 0.3;
}

// Завершение эффекта
duration--;
if (duration <= 0) {
    instance_destroy();
}









