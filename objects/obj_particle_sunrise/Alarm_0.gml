/// @description Плавность

if (!active) {
    // Постепенно уменьшаем частоту создания частиц 
    if (sun_rate > 0) {
        part_emitter_stream(particleSystem, sunEmitter, sunRayParticle, max(sun_rate - 0.05, 0));
        sun_rate -= 0.05;
        alarm[0] = 5;
    } else {
        // Когда все частицы исчезли, уничтожаем объект
        instance_destroy();
    }
}








