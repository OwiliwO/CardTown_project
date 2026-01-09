/// @description Затухание частиц

if (duration > 0) {
    duration--;
    
    // Плавное завершение через 3 секунды
    if (duration <= fade_duration && active) {
        active = false;
    
	    // Плавно уменьшаем количество частиц
	    alarm[0] = 5;
    }
}









