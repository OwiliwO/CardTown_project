/// @description Затухание

part_emitter_destroy(goldSystem, coinEmitter);
part_emitter_destroy(goldSystem, sparkleEmitter);
part_emitter_destroy(goldSystem, dustEmitter);
    
part_type_destroy(goldCoinParticle);
part_type_destroy(goldSparkleParticle);
part_type_destroy(goldDustParticle);
    
part_system_destroy(goldSystem);
instance_destroy();









