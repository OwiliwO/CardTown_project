/// @description Начальные данные

// Настройки эффекта
duration = 5 * room_speed;    // 5 секунд (автоподстройка под FPS)
active = true;
particle_rate = 6;             // Интенсивность появления частиц
    
// Цветовые схемы для разных состояний цен
color_rise = [make_color_rgb(50, 200, 50),    // Зеленый (рост)
                make_color_rgb(100, 255, 100), 
                make_color_rgb(150, 255, 150)];
    
color_fall = [make_color_rgb(255, 60, 60),    // Красный (падение)
                make_color_rgb(255, 120, 120),
                make_color_rgb(255, 180, 180)];
    
color_neutral = [make_color_rgb(200, 200, 255),  // Голубой (нейтральный)
                make_color_rgb(170, 170, 255),
                make_color_rgb(140, 140, 255)];

// Создание системы частиц
particleSystem = part_system_create_layer("Particles", -10000);
part_system_depth(particleSystem, -1000);
    
// Создание типов частиц
particle_rise = create_price_particle(color_rise, 270);    // Рост
particle_fall = create_price_particle(color_fall, 90);     // Падение
particle_neutral = create_price_particle(color_neutral, 0); // Нейтральный
    
// Создание эмиттера в верхней части экрана
emitter = part_emitter_create(particleSystem);
emit_x = room_width / 2;
emit_y = 0;
    
part_emitter_region(
    particleSystem, 
    emitter,
    emit_x - 400, emit_x + 400,  // Широкий разброс по X
    emit_y - 10, emit_y + 10,    // Небольшой разброс по Y
    ps_shape_ellipse, 
    ps_distr_linear
);
    
// Запуск эмиссии
part_emitter_stream(particleSystem, emitter, particle_neutral, particle_rate);
    
// Таймер для изменения состояния
change_timer = 0;
change_interval = 30;  // Смена состояния каждые 0.5 сек









