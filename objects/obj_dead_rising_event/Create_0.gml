/// @description Начальные данные

audio_play_sound(snd_dead_rising_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_dead_cloud);

var available_cells = [];
with (obj_cell) {
    if (building_type != 0 && !curse_flag) {
        array_push(available_cells, id);
    }
}

num_to_curse = clamp(irandom_range(2, 5), 1, array_length(available_cells));
total_population_lost = 0;

for (var i = 0; i < num_to_curse; i++) {
    var index = irandom(array_length(available_cells) - 1);
    var cell = available_cells[index];
    
    with (cell) {
		start_shake(10, 10);
        curse_flag = true;
        total_population_lost += content;
        content = 0; // Обнуляем содержание
    }
    
    array_delete(available_cells, index, 1);
}

obj_game_manager.player_content = max(0, obj_game_manager.player_content - total_population_lost);

alarm[0] = 120;