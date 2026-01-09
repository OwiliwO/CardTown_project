/// @description Начальные данные и выдача награды

audio_play_sound(snd_mines_treasure_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_gold);

gold_amount = 300;

obj_game_manager.player_gold += gold_amount;

instance_destroy();