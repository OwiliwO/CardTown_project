/// @description Наведение мыши на клетку

var rand_sound = irandom_range(2, 4);
var active = false;

if (!choice_flag) target_scale = max_scale;

if (rand_sound == 2 && !active) { audio_play_sound(snd_choice_2, 99, 0); active = true; }
if (rand_sound == 3 && !active) { audio_play_sound(snd_choice_3, 99, 0); active = true; }
if (rand_sound == 4 && !active) { audio_play_sound(snd_choice_4, 99, 0); active = true; }