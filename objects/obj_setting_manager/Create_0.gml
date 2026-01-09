/// @description Начальные данные музыки и звуковых эффектов

cursor_sprite = spr_cursor;

global.VolumeMusic = 1;
global.VolumeEffects = 0.8;
global.Records = ["крайняя попытка 1", "крайняя попытка 2", "крайняя попытка 3", "крайняя попытка 4"];

audio_group_load(Sounds);

audio_group_set_gain(audiogroup_default, global.VolumeMusic, 0);
audio_group_set_gain(Sounds, global.VolumeEffects, 0);

audio_play_sound(snd_fantasy_music, 100, 1);
