/// @description Визуализация информации

var mouse_over = position_meeting(mouse_x, mouse_y, id);

target_offset = mouse_over ? hover_amount : 0;
hover_offset = lerp(hover_offset, target_offset, hover_speed);
	
if (obj_event_manager.event_active == false) image_index = 0;
	
if (obj_event_manager.current_event_active == "обычный день")                image_index = 1;
if (obj_event_manager.current_event_active == "обещание ангела")             image_index = 4;
if (obj_event_manager.current_event_active == "сокровище глубоких шахт")     image_index = 3;
if (obj_event_manager.current_event_active == "благословение богини любви")  image_index = 2;

if (obj_event_manager.current_event_active == "атака драконов")              image_index = 5;
if (obj_event_manager.current_event_active == "восстание мертвецов")         image_index = 6;
if (obj_event_manager.current_event_active == "проклятие прибрежных земель") image_index = 7; 
if (obj_event_manager.current_event_active == "безумие волшебника")          image_index = 8;
if (obj_event_manager.current_event_active == "налет алчных гоблинов")       image_index = 9;
if (obj_event_manager.current_event_active == "холера")                      image_index = 10;
if (obj_event_manager.current_event_active == "индексация цен")              image_index = 11;








