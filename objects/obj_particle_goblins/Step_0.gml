/// @description Плавность

if (active) {
    // Случайные вспышки огня
    if (random(100) < 8) {
        var fx = random_range(50, room_width - 50);
        var fy = random_range(room_height * 0.7, room_height - 20);
        create_fire_flash(fx, fy);
    }
    
    // Случайные клубы дыма
    if (random(100) < 30) {
        var sx = random_range(30, room_width - 30);
        var sy = random_range(room_height * 0.7, room_height - 40);
        part_emitter_burst(fireSystem, smokeEmitter, smokeParticle, 0.5);
    }
} else {
	if (fire_rate >= 0) {
		fire_rate -= 0.1;
		part_emitter_stream(fireSystem, fireEmitter, fireParticle, fire_rate);
	}
}












