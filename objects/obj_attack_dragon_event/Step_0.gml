/// @description Уничтожение зданий

var buildings = [];
with (obj_cell) {
    if (building_type != 0) {
        array_push(buildings, id);
    }
}

var count = min(destroy_count, array_length(buildings));
for (var i = 0; i < count; i++) {
    var index = irandom(array_length(buildings)-1);
	var _current_content = 0;
	var _current_consumption = 0;
    with (buildings[index]) {
		start_shake(10, 10);
		_current_content = current_content;
		_current_consumption = current_consumption;
		var fire = instance_create_layer(x, y, "Particles", obj_particle_fire);
		fire.cell_id = id;
		building_type = 0;
		sprite_index = spr_trees_normal;
		image_index = tree_type;
        content = 0;
    }
	with (obj_game_manager) {
		player_content -= _current_content;
		player_gold_consumption -= _current_consumption;
	}
    array_delete(buildings, index, 1);
}

//audio_play_sound(snd_dragon_attack, 0, false);
instance_destroy();