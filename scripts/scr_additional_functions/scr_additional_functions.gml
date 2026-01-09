// Определение суффикса после числа дня
function ordinal_day_string(num) {
    var n = num mod 100;
    var last_digit = num mod 10;
    var suffix;
    
    if (n >= 11 && n <= 14) {
        suffix = "-ый";
    } else {
        switch (last_digit) {
            case 1: suffix = "-ый"; break;
            case 2: suffix = "-ой"; break;
            case 3: suffix = "-ий"; break;
            default: suffix = "-ый"; break;
        }
    }
    
    return string(num) + suffix + " день";
}
// Конвертация чисел скорости (fps -> [0 1 2])
function convert_number(_x) {
    var a = 21.0 / 2900.0;   // Коэффициент a
    var b = -851.0 / 2900.0; // Коэффициент b
    var c = 2.28620689655;   // Коэффициент c
    var _y = a * _x * _x + b * _x + c;
    return round(_y);
}
// Определение формата написания числа золота
function format_gold(argument0) {
    if (argument0 < 1000) return string(argument0);
    if (argument0 < 1000000) return string_format(argument0/1000, 1, 1) + "к";
    return string_format(argument0/1000000, 1, 1) + "м";
}
// Определение целого шанса
function choose_chance(percent) {
    return (irandom(99) < percent);
}




