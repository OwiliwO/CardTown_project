/// @description Начальные данные

function create_time_wave(x, y) {
    var wave = part_type_create();
    part_type_shape(wave, pt_shape_circle);
    part_type_color1(wave, make_color_rgb(180, 230, 255));
    part_type_blend(wave, true);
    part_type_alpha3(wave, 0.6, 0.4, 0.0);
    part_type_size(wave, 50, 300, 1.0, 0);
    part_type_life(wave, 30, 50);
    part_type_speed(wave, 0, 0, 0, 0);
    part_particles_create(timeSystem, x, y, wave, 1);
}

active = true;
time_factor = 1.0;          // Множитель ускорения времени
center_x = room_width / 2;  // Центр эффекта
center_y = room_height / 2;
speed_rate = 1;

_fx_tint = fx_create("_filter_zoom_blur");
fx_set_parameter(_fx_tint, "g_ZoomBlurCenter", [0.5, 0.5]);
fx_set_parameter(_fx_tint, "g_ZoomBlurIntensity", 0.075);
fx_set_parameter(_fx_tint, "g_ZoomBlurFocusRadius", 1024);
layer_set_fx("Particles", _fx_tint);

// Создаем систему частиц
timeSystem = part_system_create_layer("Particles", -10000);
part_system_depth(timeSystem, -1000);

// Частицы временного потока (основной эффект)
timeParticle = part_type_create();
part_type_shape(timeParticle, pt_shape_line);
part_type_color3(timeParticle,
    make_color_rgb(100, 200, 255),  // Голубой (прошлое)
    make_color_rgb(200, 150, 255),  // Фиолетовый (настоящее)
    make_color_rgb(255, 220, 100)   // Золотой (будущее)
);
part_type_blend(timeParticle, true); // Аддитивное смешивание
part_type_alpha3(timeParticle, 0.0, 0.0, 0.6);
part_type_size(timeParticle, 0, 2, 0.2, 0);
part_type_scale(timeParticle, 0.1, 0.3);
part_type_life(timeParticle, 30, 60);
part_type_speed(timeParticle, 0, 0, 0.5, 0.05); // Постоянное ускорение
part_type_direction(timeParticle, 0, 360, 0, 0);
part_type_gravity(timeParticle, 0.01, center_y); // Слабое притяжение к центру
part_type_orientation(timeParticle, 0, 0, 0, 0, true);

// Создаем эмиттеры
timeEmitter = part_emitter_create(timeSystem);

// Настраиваем области эмиссии (вокруг центра)
part_emitter_region(timeSystem, timeEmitter, 
    center_x - 100, center_x + 100,
    center_y - 100, center_y + 100,
    ps_shape_ellipse, 
    ps_distr_gaussian);

// Запускаем эмиссию
part_emitter_stream(timeSystem, timeEmitter, timeParticle, speed_rate);

// Эффект начального ускорения
alarm[0] = 1;
time_warp_factor = 1.0;

