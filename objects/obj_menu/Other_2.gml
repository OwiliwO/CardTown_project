/// @description Загрузка данных

var _fileName = "CardTownsavedate.sav";

if (!file_exists(_fileName)) { exit; } else {
	var _buffer = buffer_load(_fileName);
	var _json = buffer_read(_buffer, buffer_string); buffer_delete(_buffer);
	var _loadArray = json_parse(_json);
	
	global.Records = array_get(_loadArray, 0);
}


















