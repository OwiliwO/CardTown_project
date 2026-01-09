/// @description После уничтожения

if (part_system_exists(pinkSystem)) {
    part_emitter_destroy(pinkSystem, leftEmitter);
    part_emitter_destroy(pinkSystem, rightEmitter);
    part_type_destroy(pinkParticle);
    part_type_destroy(turbulence);
    part_system_destroy(pinkSystem);
}













