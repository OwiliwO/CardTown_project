/// @description Начальные данные

active = true;
duration = 2 * room_speed; // Длительность эффекта (2 секунд)
effect_rate = 15;

// Мистические цвета для безумия
color_madness = [
    make_color_rgb(138, 43, 226),  // Фиолетовый
    make_color_rgb(75, 0, 130),    // Индиго
    make_color_rgb(148, 0, 211),   // Тёмно-фиолетовый
    make_color_rgb(255, 0, 255),   // Пурпурный
    make_color_rgb(0, 191, 255)    // Глубокий синий
];

// Создание системы частиц
particleSystem = part_system_create_layer("Particles", -10000);
part_system_depth(particleSystem, -1000);

// Создание типа частиц для безумия
particle_madness = part_type_create();

// Настройка частиц
part_type_shape(particle_madness, pt_shape_spark);
part_type_size(particle_madness, 0.8, 1.5, -0.05, 0);
part_type_scale(particle_madness, 1, 1);
part_type_color1(particle_madness, color_madness[irandom(array_length_1d(color_madness) - 1)]);
part_type_alpha2(particle_madness, 0.8, 0.1);
part_type_speed(particle_madness, 2, 5, -0.1, 0.5);
part_type_direction(particle_madness, 0, 360, 10, 20);
part_type_gravity(particle_madness, 0.1, 270);
part_type_life(particle_madness, 30, 90);

// Создание эмиттера вокруг волшебника
emitter = part_emitter_create(particleSystem);
part_emitter_region(
    particleSystem,
    emitter,
    0, x + room_width, // Разброс по X
    0, y + room_height, // Разброс по Y
    ps_shape_ellipse,
    ps_distr_gaussian
);

// Интенсивность эмиссии
part_emitter_stream(particleSystem, emitter, particle_madness, effect_rate);

// Таймер для случайных всплесков
madness_timer = 0;
madness_interval = room_speed * 0.5; // Каждые 0.5 секунд



















