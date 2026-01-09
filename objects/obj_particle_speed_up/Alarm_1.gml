/// @description Уничтожение

part_emitter_destroy(timeSystem, timeEmitter);
   
part_type_destroy(timeParticle);
    
part_system_destroy(timeSystem);

layer_clear_fx("Particles");
instance_destroy();



















