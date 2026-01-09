/// @description После уничтожения

if (part_system_exists(particleSystem)) {
    part_emitter_destroy(particleSystem, angelEmitter);
    part_type_destroy(angelParticle);
    part_system_destroy(particleSystem);
}









