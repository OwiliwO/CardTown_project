/// @description Начальные данные

duration = 200;                 // Длительность эффекта (10 сек при 60 FPS)
fade_duration = 180;            // Длительность исчезновения (3 сек)
active = true;                  // Флаг активности
sun_rate = 1.5;

// Создаем систему частиц
particleSystem = part_system_create_layer("Particles", -9000);
part_system_depth(particleSystem, -1000);

// Типы частиц:

// 1. Солнечные лучи
sunRayParticle = part_type_create();
part_type_shape(sunRayParticle, pt_shape_line);
part_type_color_mix(sunRayParticle, make_color_rgb(255, 180, 100), make_color_rgb(255, 220, 150)); 
part_type_alpha3(sunRayParticle, 0.0, 0.3, 0.0);
part_type_size(sunRayParticle, 10, 80, 0.1, 0);
part_type_scale(sunRayParticle, 1.0,0.2);
part_type_life(sunRayParticle, 150, 200);
part_type_life(sunRayParticle, 40, 60);
part_type_speed(sunRayParticle, 0, 0, 0, 0);
part_type_orientation(sunRayParticle, 0, 360, 0, 0, 1);

// Создаем эмиттеры
sunEmitter = part_emitter_create(particleSystem);


// Настраиваем области эмиссии
part_emitter_region(particleSystem, sunEmitter, 
    0, 0, 0, 0, 
    ps_shape_ellipse, ps_distr_gaussian);


// Запускаем эмиссию
part_emitter_stream(particleSystem, sunEmitter, sunRayParticle, sun_rate);









