/// @description Начальные данные

audio_play_sound(snd_blessinng_love_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_loving);

multiplier_content = 2;

obj_game_manager.player_content *= multiplier_content;

instance_destroy();