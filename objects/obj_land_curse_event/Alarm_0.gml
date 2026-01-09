/// @description Уничтожение

var destroy = false;

with (obj_particle_curse_cloud) {
    if (active) {
        active = false;
        fade_timer = fade_duration;
    }
	if (fade_timer <= 0) destroy = true;
}

if (destroy) instance_destroy();








