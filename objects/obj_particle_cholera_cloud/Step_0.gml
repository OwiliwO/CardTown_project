/// @description Плавное исчезновение

// Плавное исчезновение при уничтожении
if (!active) {
    alpha = max(alpha - fade_speed, 0);
    fade_timer--;
    part_emitter_stream(particleSystem, emitter, hazeParticle, max(current_rate, 0));
	current_rate--;
	
    if (fade_timer <= 0) {
        instance_destroy();
    }
}

// Обновление поверхности (если используется)
if (overlay_surface != -1) {
    if (!surface_exists(overlay_surface)) {
        create_overlay();
    }
}



