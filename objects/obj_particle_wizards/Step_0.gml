/// @description Плавность

if (active) {
    // Обновляем позицию эмиттера вслед за волшебником
    part_emitter_region(
        particleSystem,
        emitter,
        0, x + room_width, // Разброс по X
		0, y + room_height, // Разброс по Y
        ps_shape_ellipse,
        ps_distr_gaussian
    );
    
    // Случайные всплески безумия
    madness_timer++;
    if (madness_timer >= madness_interval) {
        madness_timer = 0;
        part_emitter_burst(
            particleSystem,
            emitter,
            particle_madness,
            irandom_range(10, 30) // Хаотичные выбросы
        );
    }
    
    // Автоматическое завершение
    if (duration-- <= 0) active = false;
} else {
	if (effect_rate > 0) {
		part_emitter_stream(particleSystem, emitter, particle_madness, effect_rate);
		effect_rate -= 0.5;
	} else instance_destroy();
}



















