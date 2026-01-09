/// @description Начальные данные эффекта

// Функция создания оверлея
function create_overlay() {
    overlay_surface = surface_create(room_width, room_height);
    if (surface_exists(overlay_surface)) {
        surface_set_target(overlay_surface);
        draw_clear_alpha(c_black, 0); // Прозрачная поверхность
        surface_reset_target();
    }
}

// Параметры дымки
alpha = 0.1;                    // Начальная прозрачность (едва заметная)
fade_duration = 180;            // Длительность исчезновения (3 сек при 60 FPS)
fade_timer = fade_duration;     // Таймер исчезновения
fade_speed = 0.02;              // Скорость плавного изменения
active = true;                  // Флаг активности
haze_color = make_color_rgb(76, 76, 76); // Серый цвет
current_rate = 15;

// Создаем текстуру для дымки (если нужно динамическое изменение)
overlay_surface = -1;
create_overlay();

// Создаем систему частиц для легкого мерцания
particleSystem = part_system_create_layer("Particles", -1000);

hazeParticle = part_type_create();
part_type_shape(hazeParticle, pt_shape_cloud);
part_type_color1(hazeParticle, haze_color);
part_type_alpha1(hazeParticle, fade_speed + 0.01);
part_type_size(hazeParticle, 10, 15, 0, 0);
part_type_life(hazeParticle, 90, 120);
part_type_speed(hazeParticle, 0.5, 1.0, 0, 0);

// Эмиттер на весь экран
emitter = part_emitter_create(particleSystem);
part_emitter_region(particleSystem, emitter, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(particleSystem, emitter, hazeParticle, current_rate);

//alarm[0] = 240;