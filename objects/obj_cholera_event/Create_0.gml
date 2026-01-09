/// @description Начальные данные

audio_play_sound(snd_cholera_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_cholera_cloud);

content_destroy = irandom_range(10, 45);
obj_game_manager.player_content -= content_destroy;

alarm[0] = 120;