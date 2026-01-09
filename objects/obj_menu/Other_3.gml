/// @description Сохранение данных

var _saveArray = array_create(0);
array_push(_saveArray, global.Records);
				
var _fileName = "CardTownsavedate.sav";
var _json = json_stringify(_saveArray);
var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
	
buffer_write(_buffer, buffer_string, _json);
buffer_save(_buffer, _fileName);
buffer_delete(_buffer);




















