/// @description Начальные данные

audio_play_sound(snd_goblin_raid_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_goblins);

content_destroy = irandom_range(10, 50);
gold_destroy = irandom_range(50, 400);

obj_game_manager.player_content -= content_destroy;
obj_game_manager.player_gold -= gold_destroy;

instance_destroy();