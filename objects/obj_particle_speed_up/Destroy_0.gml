/// @description После уничтожения

if (part_system_exists(timeSystem)) {
    part_emitter_destroy(timeSystem, timeEmitter);
    part_emitter_destroy(timeSystem, distortionEmitter);
    part_emitter_destroy(timeSystem, riftEmitter);
        
    part_type_destroy(timeParticle);
    part_type_destroy(distortionParticle);
    part_type_destroy(riftParticle);
        
    part_system_destroy(timeSystem);
}



















