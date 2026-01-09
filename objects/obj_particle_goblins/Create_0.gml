/// @description Начальные данные

function create_fire_flash(x, y) {
    // Мощная вспышка пламени
    part_emitter_burst(fireSystem, fireEmitter, fireParticle, 10);
    
    // Искры
    var spark = part_type_create();
    part_type_shape(spark, pt_shape_spark);
    part_type_color3(
        spark,
        make_color_rgb(255, 240, 100),
        make_color_rgb(255, 180, 40),
        make_color_rgb(255, 80, 0)
    );
    part_type_blend(spark, true);
    part_type_alpha3(spark, 1.0, 0.8, 0.0);
    part_type_size(spark, 2, 5, 0, -0.05);
    part_type_life(spark, 20, 40);
    part_type_speed(spark, 2, 8, -0.1, 0);
    part_type_direction(spark, 0, 360, 0, 0);
    part_particles_create(fireSystem, x, y, spark, 15);

}

// Настройки системы
duration = 100;             // Длительность эффекта (15 сек при 60 FPS)
active = true;
intensity = 1.0;            // Интенсивность огня
fire_rate = 2 * intensity;

// Создаем систему частиц
fireSystem = part_system_create_layer("Particles", -10000);
part_system_depth(fireSystem, -1000);

// 1. Частицы пламени
fireParticle = part_type_create();
part_type_shape(fireParticle, pt_shape_flare);
part_type_color3(
    fireParticle,
    make_color_rgb(255, 220, 40),   // Ярко-желтый
    make_color_rgb(255, 100, 20),   // Оранжевый
    make_color_rgb(180, 40, 10)     // Темно-красный
);
part_type_blend(fireParticle, true); // Аддитивное смешивание
part_type_alpha3(fireParticle, 0.8, 1.0, 0.0);
part_type_size(fireParticle, 8, 20, 0.3, -0.1);
part_type_life(fireParticle, 40, 70);
part_type_speed(fireParticle, 1, 3, -0.05, 0);
part_type_direction(fireParticle, 70, 110, 0, 0); // В основном вверх

// 2. Частицы дыма
smokeParticle = part_type_create();
part_type_shape(smokeParticle, pt_shape_smoke);
part_type_color2(
    smokeParticle,
    make_color_rgb(80, 80, 80),     // Серый дым
    make_color_rgb(40, 40, 40)      // Темный дым
);
part_type_alpha2(smokeParticle, 0.2, 0.0);
part_type_size(smokeParticle, 20, 50, 0.4, 0);
part_type_life(smokeParticle, 120, 180);
part_type_speed(smokeParticle, 1, 2, -0.01, 0);
part_type_direction(smokeParticle, 80, 100, 0, 0); // Медленно вверх

// Создаем эмиттеры
fireEmitter = part_emitter_create(fireSystem);
smokeEmitter = part_emitter_create(fireSystem);

// Настраиваем области эмиссии (в нижней части экрана - где дома)
part_emitter_region(fireSystem, fireEmitter, 
    50, room_width - 50, 
    room_height + 300, room_height + 500,
    ps_shape_rectangle, 
    ps_distr_linear);

part_emitter_region(fireSystem, smokeEmitter, 
    50, room_width - 50, 
    room_height + 300, room_height + 500,
    ps_shape_rectangle, 
    ps_distr_gaussian);

// Запускаем эмиссию
part_emitter_stream(fireSystem, fireEmitter, fireParticle, fire_rate);

// Таймеры
alarm[1] = duration; // Для завершения эффекта











