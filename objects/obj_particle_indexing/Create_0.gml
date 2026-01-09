/// @description Начальные данные

function create_price_particle(_colors) {
    var p = part_type_create();
    
    // Внешний вид
    part_type_shape(p, pt_shape_sphere);
    part_type_color3(p, _colors[0], _colors[1], _colors[2]);
    part_type_blend(p, true);
    part_type_alpha3(p, 0.0, 0.7, 0.0);  // Появление и исчезновение
    
    // Размер и рост
    part_type_size(p, 2, 5, 0.08, -0.05);
    
    // Физические свойства
    part_type_life(p, 40, 70); // 0.7-1.2 сек при 60 FPS
    
    // Частицы из левого края движутся вправо, из правого - влево
    part_type_speed(p, 3.0, 4.5, -0.03, 0);
    part_type_direction(p, 80, 100, 0, 0); // Основное направление к центру
    
    // Легкая гравитация вниз для естественности
    part_type_gravity(p, 0.05, 270);
    
    // Небольшое вращение для динамики
    part_type_orientation(p, 0, 360, 0.2, 0.5, true);
    
    return p;
}

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
particle_rise = create_price_particle(color_rise);    // Рост
particle_fall = create_price_particle(color_fall);     // Падение
particle_neutral = create_price_particle(color_neutral); // Нейтральный
    
// Создание эмиттера в верхней части экрана
emitter_left = part_emitter_create(particleSystem);
emitter_right = part_emitter_create(particleSystem);
    
// Левый эмиттер (край экрана)
part_emitter_region(
    particleSystem, 
    emitter_left,
    -10, 10,                   // X: от -10 до 10 (левая граница)
    0, room_height,             // Y: вся высота экрана
    ps_shape_rectangle, 
    ps_distr_linear
);
    
// Правый эмиттер (край экрана)
part_emitter_region(
    particleSystem, 
    emitter_right,
    room_width - 10, room_width + 10, // X: правая граница
    0, room_height,                   // Y: вся высота экрана
    ps_shape_rectangle, 
    ps_distr_linear
);
    
// Запуск эмиссии
current_particle = particle_neutral;
part_emitter_stream(particleSystem, emitter_left, current_particle, particle_rate);
part_emitter_stream(particleSystem, emitter_right, current_particle, particle_rate);
    
// Таймер для изменения состояния
change_timer = 0;
change_interval = 30;  // Смена состояния каждые 0.5 сек




















