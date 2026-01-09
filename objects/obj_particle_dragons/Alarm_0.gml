/// @description Появление частиц

repeat(5) {
	var px = x + random_range(-3, 3);
	var py = y - 25;
	part_particles_create(particleSystem, px, py, particleFire, 2);
	part_particles_create(particleSystem, px, py - 10, particleSmoke, 1);
}

shake_intensity = 5;
shake_duration = 5;

var loopTime = irandom_range(loopTimeMin, loopTimeMax);
alarm_set(0, loopTime);