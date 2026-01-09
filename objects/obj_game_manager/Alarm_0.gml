/// @description Возвращение в меню

var _game_minutes_text = "";
var _game_hours_text = "";
if (obj_time_manager.game_minutes <= 9) _game_minutes_text = "0";
if (obj_time_manager.game_hours <= 9) _game_hours_text = "0";
var time_string = _game_hours_text + string_format(obj_time_manager.game_hours, 1, 0) + ":" + _game_minutes_text + string_format(obj_time_manager.game_minutes, 1, 0);

if (type_target == "стандарт") {
	global.Records[0] = "точное время: " + time_string + " % количество дней: " + string(obj_time_manager.game_days);
}

if (type_target == "бесконечность") {
	global.Records[1] = "точное время: " + time_string + " % количество дней: " + string(obj_time_manager.game_days);
}

if (type_target == "золотая лихорадка") {
	global.Records[2] = "точное время: " + time_string + " % количество дней: " + string(obj_time_manager.game_days);
}

if (type_target == "драконоборство") {
	global.Records[3] = "точное время: " + time_string + " % количество дней: " + string(obj_time_manager.game_days);
}

room_goto_previous();
