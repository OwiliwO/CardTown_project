/// @description Ускорение

if (active) {
    //duration--;
    
    // Постепенно увеличиваем ускорение времени
    time_warp_factor += 0.01;
    
    // Применяем ускорение к частицам
    part_type_speed(timeParticle, 0, 0, 0.5 * time_warp_factor, 0.05 * time_warp_factor);
    
    // Увеличиваем интенсивность со временем
    part_emitter_stream(timeSystem, timeEmitter, timeParticle, speed_rate * time_warp_factor);
    
    // Завершение эффекта
} else {
	if (speed_rate > 0) {
		speed_rate -= 0.02;
		part_emitter_stream(timeSystem, timeEmitter, timeParticle, speed_rate);
	} else alarm[1] = 1;
}



















