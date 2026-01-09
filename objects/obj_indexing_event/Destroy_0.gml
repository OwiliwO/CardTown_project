/// @description Возвращение цен

// Восстанавливаем оригинальные цены
for (var i = 0; i < array_length(global.buildings); i++) {
    if (array_length(other.original_prices) > i) {
        global.buildings[i].cost = other.original_prices[i];
    }
}

