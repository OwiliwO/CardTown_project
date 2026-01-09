/// @description Начальные данные

duration = 200;              // Длительность эффекта (15 сек при 60 FPS)
active = true;
left_x = 0;                  // Левая граница
right_x = room_width;        // Правая граница
height_range = 100;          // Вертикальный разброс

// Создаем систему частиц
pinkSystem = part_system_create_layer("Particles", -10000);
part_system_depth(pinkSystem, -1000);

// Тип частиц для розового потока
pinkParticle = part_type_create();

// Внешний вид - розовые оттенки
part_type_shape(pinkParticle, pt_shape_cloud);
part_type_color3(
    pinkParticle,
    make_color_rgb(255, 200, 220),  // Светло-розовый
    make_color_rgb(255, 150, 180),  // Ярко-розовый
    make_color_rgb(220, 100, 150)   // Глубокий розовый
);

// Прозрачность - плавное появление и исчезновение
part_type_alpha3(
    pinkParticle, 
    0.0,   // Начальная (полностью прозрачная)
    0.8,   // Пиковая прозрачность
    0.0    // Конечная (полностью прозрачная)
);

// Размер и его изменение
part_type_size(
    pinkParticle, 
    1,      // Начальный размер
    25,     // Максимальный размер
    0.15,   // Скорость роста
    -0.08   // Скорость уменьшения
);

// Физические свойства
part_type_life(pinkParticle, 10, 30); // 2-3 сек жизни
part_type_speed(pinkParticle, 3, 6, -0.02, 0);

// Создаем два эмиттера
leftEmitter = part_emitter_create(pinkSystem);
rightEmitter = part_emitter_create(pinkSystem);

// Настраиваем области эмиссии
// Левый эмиттер - частицы летят вправо
part_emitter_region(
    pinkSystem, 
    leftEmitter,
    left_x - 10, left_x + 10,  // Узкая полоса слева
    room_height/2 - height_range, room_height/2 + height_range,
    ps_shape_rectangle, 
    ps_distr_linear
);

// Правый эмиттер - частицы летят влево
part_emitter_region(
    pinkSystem, 
    rightEmitter,
    right_x - 10, right_x + 10,  // Узкая полоса справа
    room_height/2 - height_range, room_height/2 + height_range,
    ps_shape_rectangle, 
    ps_distr_linear
);

// Запускаем эмиссию
part_emitter_stream(pinkSystem, leftEmitter, pinkParticle, 1);
part_emitter_stream(pinkSystem, rightEmitter, pinkParticle, 1);

// Создаем эффект турбулентности
turbulence = part_type_create();
part_type_shape(turbulence, pt_shape_spark);
part_type_color1(turbulence, make_color_rgb(255, 230, 240));
part_type_alpha3(turbulence, 0.0, 0.4, 0.0);
part_type_size(turbulence, 1, 3, 0.05, 0);
part_type_life(turbulence, 10, 30);
part_type_speed(turbulence, 1, 3, 0, 0);














