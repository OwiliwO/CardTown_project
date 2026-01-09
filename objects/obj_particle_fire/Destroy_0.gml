/// @description После уничтожения

part_emitter_destroy(particleSystem, fireEmitter);
part_emitter_destroy(particleSystem, sparkEmitter);
part_emitter_destroy(particleSystem, ashEmitter);
part_type_destroy(fireParticle);
part_type_destroy(sparkParticle);
part_type_destroy(ashParticle);
part_system_destroy(particleSystem);









