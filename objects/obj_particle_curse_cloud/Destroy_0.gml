/// @description После уничтожения

if (surface_exists(overlay_surface)) {
    surface_free(overlay_surface);
}
part_emitter_destroy(particleSystem, emitter);
part_type_destroy(hazeParticle);
part_system_destroy(particleSystem);









