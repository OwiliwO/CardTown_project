/// @description Начальные данные

audio_play_sound(snd_land_curse_event, 96, 0);

cells_to_curse = irandom_range(3, 5); // Количество клеток для проклятия
instance_create_layer(0, 0, "Particles", obj_particle_curse_cloud);

var available_cells = [];
with (obj_cell) {
    if (building_type == 0 && !curse_flag) {
        array_push(available_cells, id);
    }
}

var num_to_curse = min(cells_to_curse, array_length(available_cells));
for (var i = 0; i < num_to_curse; i++) {
    var index = irandom(array_length(available_cells) - 1);
    with (available_cells[index]) {
        curse_flag = true;
		start_shake(10, 10);
    }
    array_delete(available_cells, index, 1);
}

alarm[0] = 120;
