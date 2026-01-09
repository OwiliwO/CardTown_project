/// @description После уничтожения

if (part_system_exists(fireSystem)) {
    part_emitter_destroy(fireSystem, fireEmitter);
    part_emitter_destroy(fireSystem, smokeEmitter);
        
    part_type_destroy(fireParticle);
    part_type_destroy(smokeParticle);
        
    part_system_destroy(fireSystem);
}













