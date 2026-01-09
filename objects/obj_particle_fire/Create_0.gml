/// @description Начальные данные эффекта

duration = 100;          // Длительность эффекта в кадрах
burn_progress = 0;       // Прогресс горения (0-1)
cell_id = noone;         // Ссылка на клетку
fire_intensity = 1.0;    // Интенсивность огня

// Создаем систему частиц
particleSystem = part_system_create_layer("Particles", -10000);
part_system_depth(particleSystem, -1000);

// Пламя
fireParticle = part_type_create();
part_type_shape(fireParticle, pt_shape_flare);
part_type_color3(fireParticle, c_yellow, c_orange, c_red);
part_type_alpha2(fireParticle, 1, 0);
part_type_size(fireParticle, 0.5, 1.2, -0.01, 0);
part_type_speed(fireParticle, 1, 3, -0.1, 0);
part_type_direction(fireParticle, 70, 110, 0, 0); // Огонь стремится вверх
part_type_gravity(fireParticle, 0.05, 90);
part_type_life(fireParticle, 20, 40);

// Искры
sparkParticle = part_type_create();
part_type_shape(sparkParticle, pt_shape_spark);
part_type_color3(sparkParticle, c_yellow, c_red, c_maroon);
part_type_alpha3(sparkParticle, 1, 0.8, 0);
part_type_size(sparkParticle, 0.3, 0.1, -0.02, 0);
part_type_speed(sparkParticle, 3, 6, -0.2, 0);
part_type_direction(sparkParticle, 0, 360, 0, 0);
part_type_gravity(sparkParticle, 0.1, 90);
part_type_life(sparkParticle, 10, 20);

// Пепел
ashParticle = part_type_create();
part_type_shape(ashParticle, pt_shape_smoke);
part_type_color1(ashParticle, make_color_rgb(60, 60, 60));
part_type_alpha2(ashParticle, 0.8, 0);
part_type_size(ashParticle, 0.5, 1.5, 0.01, 0);
part_type_speed(ashParticle, 0.5, 1.5, -0.01, 0);
part_type_direction(ashParticle, 0, 360, 0, 0);
part_type_gravity(ashParticle, 0.02, 90);
part_type_life(ashParticle, 60, 120);

// Создаем эмиттеры
fireEmitter = part_emitter_create(particleSystem);
sparkEmitter = part_emitter_create(particleSystem);
ashEmitter = part_emitter_create(particleSystem);









