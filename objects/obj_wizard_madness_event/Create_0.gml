/// @description Начальные данные

audio_play_sound(snd_wizard_madness_event, 96, 0);
instance_create_layer(0, 0, "Particles", obj_particle_wizards);

gold_amount = 300;
content_destroy = 50;

obj_game_manager.player_gold += gold_amount;
obj_game_manager.player_content -= content_destroy;
instance_destroy();