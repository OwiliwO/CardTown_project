/// @description Плавность

if (active) {
    duration--;
    if (duration <= 0) {
        active = false;
        // Плавно останавливаем эмиссию
        part_emitter_stream(pinkSystem, leftEmitter, pinkParticle, 0);
        part_emitter_stream(pinkSystem, rightEmitter, pinkParticle, 0);
        
        // Уничтожаем систему через 3 секунды
        alarm[0] = 180;
    }
    
    // Периодически создаем турбулентность
    if (random(100) < 20) {
        var px = random_range(50, room_width-50);
        var py = random_range(100, room_height-100);
        part_particles_create(pinkSystem, px, py, turbulence, 5);
    }
}












