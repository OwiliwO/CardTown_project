/// @description Начальные данные

audio_play_sound(snd_indexing_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_indexing);

original_prices = array_create(0); // Массив для хранения исходных цен
price_multiplier = 2; // Множитель цен

// Инициализация при создании события

for (var i = 0; i < array_length(global.buildings); i++) {
    array_push(other.original_prices, global.buildings[i].cost);
    global.buildings[i].cost *= other.price_multiplier;
}
