/// @description Плавность

change_timer++;
    
// Смена состояния каждые N шагов
if (change_timer >= change_interval) {
    change_timer = 0;
        
    // Случайный выбор следующего состояния
    var new_state = choose(particle_rise, particle_fall, particle_neutral);
        
    if (new_state != current_particle) {
        current_particle = new_state;
        part_emitter_stream(particleSystem, emitter_left, current_particle, particle_rate);
        part_emitter_stream(particleSystem, emitter_right, current_particle, particle_rate);
    }
}
    
// Завершение эффекта по истечении времени
duration--;
if (duration > 0) {
	particle_rate -= 1;
	part_emitter_stream(particleSystem, emitter_left, particle_neutral, particle_rate);
	part_emitter_stream(particleSystem, emitter_right, particle_neutral, particle_rate);
}
if (duration <= 0) {
    active = false;
    part_emitter_destroy(particleSystem, emitter_left);
	part_emitter_destroy(particleSystem, emitter_right);
    part_system_destroy(particleSystem);
    instance_destroy();
}



















