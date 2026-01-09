/// @description Характеристики частиц

move_speed = 10; // Скорость перемещения
move_angle = 155; // Угол движения (северо-запад)

loopTimeMin = 1;
loopTimeMax = 3;

shake_intensity = 0;
shake_duration = 0;
camera_default = view_camera[0];

alarm[0] = loopTimeMin;

particleSystem = part_system_create_layer("Particles", -10000);
part_system_depth(particleSystem, -y - 1000);

// Пламя
particleFire = part_type_create();
// Настройка внешнего вида
part_type_sprite(particleFire, spr_particles_events, 0, 1, 0);
part_type_blend(particleFire, 1);  // Аддитивное смешивание для огня
part_type_color3(particleFire, c_orange, c_red, c_maroon); // Градиент цветов
part_type_alpha3(particleFire, 1, 0.8, 0);  // Постепенное исчезновение
    
// Динамика движения
part_type_speed(particleFire, 15, 18, -0.3, 0); // Начальная скорость + небольшой разброс
part_type_direction(particleFire, 245, 275, 0, 0); // Конус направлений вниз
part_type_orientation(particleFire, 0, 360, 2, 1, 1); // Случайное вращение
    
// Физические параметры
part_type_size(particleFire, 0.5, 1.5, -0.05, 0); // Размер меняется
part_type_gravity(particleFire, 0.08, 270);  // Сильная гравитация вниз
part_type_life(particleFire, 60, 80);  // Время жизни частиц

// Дым
particleSmoke = part_type_create();
// Настройка внешнего вида
part_type_sprite(particleSmoke, spr_particles_events, 0, 1, 0);
part_type_blend(particleSmoke, 0);
part_type_color3(particleSmoke, c_gray, c_dkgray, c_black);
part_type_alpha2(particleSmoke, 0.6, 0.2);

// Динамика движения
part_type_speed(particleSmoke, 2, 4, 0.1, 0);
part_type_direction(particleSmoke, 240, 300, 0, 2);
part_type_gravity(particleSmoke, 0.05, 270);

// Физические параметры
part_type_life(particleSmoke, 30, 50);
part_type_size(particleSmoke, 0.6, 0.8, 0.02, 0);