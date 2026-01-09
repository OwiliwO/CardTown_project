/// @description Усиление

// Усиливаем эффект на короткое время
intensity = 1.8;
part_emitter_stream(fireSystem, fireEmitter, fireParticle, fire_rate);
    
// Создаем несколько мощных вспышек
for (var i = 0; i < 3; i++) {
    var fx = random_range(50, room_width - 50);
    var fy = random_range(room_height * 0.7, room_height - 20);
    create_fire_flash(fx, fy);
}
    
// Возвращаем обычную интенсивность
alarm[2] = 45;
alarm[0] = random_range(90, 150);













