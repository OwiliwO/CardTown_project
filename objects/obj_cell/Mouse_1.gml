/// @description Удаление строения

if (building_type != 0) {
	audio_play_sound(snd_destroing, 98, 0);

    building_type = 0;
	sprite_index = spr_trees_normal;
	image_index = tree_type;
    
    // Сохраняем 'other' в переменную перед блоком 'with'
    var _target = other;
    
    with (obj_game_manager) {
        player_content -= _target.current_content;
        player_gold_consumption -= _target.current_consumption;
    }
    
    // Используем сохранённую ссылку
    _target.current_content = 0;
    _target.current_consumption = 0;
}








