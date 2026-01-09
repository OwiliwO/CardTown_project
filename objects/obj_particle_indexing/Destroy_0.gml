/// @description После уничтожения

if (part_system_exists(particleSystem)) {
    part_emitter_destroy(particleSystem, emitter);
    part_system_destroy(particleSystem);
}



















