/// @description Начальные данные

// Настройки системы
gold_duration = 100;          // Длительность эффекта (10 сек при 60 FPS)
active = true;
spawn_radius = 200;           // Радиус появления золота
spawn_x = room_width / 2;     // Центр появления
spawn_y = -100;

// Создаем систему частиц
goldSystem = part_system_create_layer("Particles", -10000);
part_system_depth(goldSystem, -1000);

// 1. Частицы золотых монет
goldCoinParticle = part_type_create();
part_type_shape(goldCoinParticle, pt_shape_disk);
part_type_sprite(goldCoinParticle, spr_particles_events, false, false, false);
part_type_color1(goldCoinParticle, make_color_rgb(255, 215, 0)); // Золотой цвет
part_type_alpha2(goldCoinParticle, 1, 0.8);
part_type_size(goldCoinParticle, 0.8, 1.2, 0, 0);
part_type_scale(goldCoinParticle, 1, 1);
part_type_life(goldCoinParticle, 90, 120);
part_type_speed(goldCoinParticle, 2, 5, -0.05, 0);
part_type_direction(goldCoinParticle, 10, 360, 0, 0);
part_type_gravity(goldCoinParticle, 0.2, 270); // Падение вниз

// 2. Частицы золотых блесток
goldSparkleParticle = part_type_create();
part_type_shape(goldSparkleParticle, pt_shape_star);
part_type_color3(goldSparkleParticle,
    make_color_rgb(255, 223, 0),  // Яркое золото
    make_color_rgb(255, 215, 0),  // Стандартное золото
    make_color_rgb(218, 165, 32)  // Золотистый
);
part_type_blend(goldSparkleParticle, true); // Аддитивное смешивание
part_type_alpha3(goldSparkleParticle, 0, 1, 0);
part_type_size(goldSparkleParticle, 0.3, 0.8, 0.01, 0);
part_type_life(goldSparkleParticle, 40, 70);
part_type_speed(goldSparkleParticle, 1, 4, -0.1, 0);
part_type_direction(goldSparkleParticle, 0, 360, 0, 0);

// 3. Частицы золотой пыли
goldDustParticle = part_type_create();
part_type_shape(goldDustParticle, pt_shape_pixel);
part_type_color2(goldDustParticle,
    make_color_rgb(255, 240, 150),  // Светлое золото
    make_color_rgb(205, 170, 50)    // Темное золото
);
part_type_alpha2(goldDustParticle, 0.7, 0);
part_type_size(goldDustParticle, 1, 3, 0, 0);
part_type_life(goldDustParticle, 100, 150);
part_type_speed(goldDustParticle, 0.5, 1.5, -0.01, 0);
part_type_direction(goldDustParticle, 10, 360, 0, 0);
part_type_gravity(goldDustParticle, 0.05, 270); // Медленное падение

// Создаем эмиттеры
coinEmitter = part_emitter_create(goldSystem);
sparkleEmitter = part_emitter_create(goldSystem);
dustEmitter = part_emitter_create(goldSystem);

// Настраиваем области эмиссии
part_emitter_region(goldSystem, coinEmitter, 
    spawn_x - spawn_radius, spawn_x + spawn_radius,
    spawn_y - spawn_radius, spawn_y + spawn_radius,
    ps_shape_ellipse, ps_distr_gaussian);

part_emitter_region(goldSystem, sparkleEmitter, 
    spawn_x - spawn_radius*0.8, spawn_x + spawn_radius*0.8,
    spawn_y - spawn_radius*0.8, spawn_y + spawn_radius*0.8,
    ps_shape_ellipse, ps_distr_gaussian);

part_emitter_region(goldSystem, dustEmitter, 
    spawn_x - spawn_radius*1.2, spawn_x + spawn_radius*1.2,
    spawn_y - spawn_radius*1.2, spawn_y + spawn_radius*1.2,
    ps_shape_ellipse, ps_distr_gaussian);

// Запускаем эмиссию
part_emitter_stream(goldSystem, coinEmitter, goldCoinParticle, 15);
//part_emitter_stream(goldSystem, sparkleEmitter, goldSparkleParticle, 30);
part_emitter_stream(goldSystem, dustEmitter, goldDustParticle, 10);

// Эффект первоначального взрыва золота
alarm[0] = 1; // Запустим на следующем шаге









