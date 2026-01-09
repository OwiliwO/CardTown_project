/// @description Инициализация параметров игрока

player_gold = 0;			// Стартовое золото
player_gold_consumption = 0;// Стартовый расход в день
player_content = 0;			// Стартовое количество жителей
player_mines = 0;			// Стартовое количество шахт

type_target = global.TypeGame;   // Вид возможной цели
target_content = 0;		     // Необходимое количество жителей для победы (стандартная 500)
target_mine = 10;                // Необходимое количество шахт для победы (стандартная 10)

gold_multiplier = 1;        // Степень начисления золота
gold_counter = 0;			// Счетчик кадров
gold_interval = 30;			// Интервал начисления (в кадрах)

defeat_flag = false;
event_flag = false;
alpha = 0;
fade_duration = 90; // Длительность анимации в шагах (1.5 сек при 60 FPS)
hold_duration = 60; // Длительность показа в шагах (3 секунды)
fade_timer = 0;
fade_state = 0; // 0=появление, 1=показ, 2=затухание

game_end_flag = false;
game_end_flag_prev = false;

global.buildings = [
    {
		name: "халупа",
		description: "обычная хибара, вмещающая меленькое количество людей",
		content: 10,
		cost: 300,
		daily_power: 0,
		daily_cost: 0,
		anim_progress: 0,
		frame: 1
	},
    {
		name: "поместье",
		description: "прочный дом, вмещающий небольшое количество людей",
		content: 25,
		cost: 600,
		daily_power: 0,
		daily_cost: 0,
		anim_progress: 0,
		frame: 2
	},
    {
		name: "усадьба",
		description: "роскошный особняк, вмещающий большое количество людей",
		content: 40,
		cost: 950,
		daily_power: 0,
		daily_cost: 0,
		anim_progress: 0,
		frame: 3
	},
	{
		name: "церковь",
		description: "небольшое церковное пристанище. увеличивается шанс (обещание ангела)",
		content: 10,
		cost: 650,
		daily_power: 12,
		daily_cost: 500,
		anim_progress: 0,
		frame: 4
	},
	{
		name: "святилище",
		description: "кладбищенский мемориал. увеличивает шанс (благословение богини любви)",
		content: 5,
		cost: 400,
		daily_power: 12,
		daily_cost: 200,
		anim_progress: 0,
		frame: 5
	},
	{
		name: "ратуша",
		description: "центральное здание поселения. увеличивает шанс (индексация цен)",
		content: 60,
		cost: 1800,
		daily_power: 12,
		daily_cost: 100,
		anim_progress: 0,
		frame: 6
	},
	{
		name: "башня мага",
		description: "таинственная башня придворного волшебника. увеличивает шанс (безумие волшебника) и понижает шанс (атака дракона)",
		content: 5,
		cost: 500,
		daily_power: 6,
		daily_cost: 300,
		anim_progress: 0,
		frame: 7
	},
	{
		name: "лазарет",
		description: "обветшалое строения местного лазарета. понижает шанс (холера)",
		content: 5,
		cost: 200,
		daily_power: -6,
		daily_cost: 600,
		anim_progress: 0,
		frame: 8
	},
	{
		name: "казармы",
		description: "надежные городские казармы. увеличивает ежедневное население и понижает шанс (налет алчных гоблинов)",
		content: 15,
		cost: 450,
		daily_power: -6,
		daily_cost: 550,
		anim_progress: 0,
		frame: 9
	},
	{
		name: "шахта",
		description: "угольная шахта, ведущая глубоко в бездну. увеличивает доход и повышает шанс (сокровище глубоких шахт)",
		content: 10,
		cost: 850,
		daily_power: 12,
		daily_cost: 900,
		anim_progress: 0,
		frame: 10
	}
];





