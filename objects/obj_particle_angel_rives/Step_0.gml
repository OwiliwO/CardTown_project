/// @description Плавность частиц

if (active) {
    duration--;
    if (duration <= 0) {
        active = false;
        // Плавно останавливаем эмиссию
        part_emitter_stream(particleSystem, angelEmitter, angelParticle, 0);
            
        // Уничтожаем систему через 2 секунды (после исчезновения частиц)
        alarm[0] = 120;
    }
}









