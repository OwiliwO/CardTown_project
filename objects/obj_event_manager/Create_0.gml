/// @description Инициализация процентажа

event_active = false;
event_duration_active = false;
change_chance_active = false;
current_event_active = "";
current_obj_event_active = 0;
current_description_event_active = "";
current_duration_event_active = 0;

positive_percent = 50;

positive_events = [
	// Обычный день (15 %) +++
	{obj: obj_regular_day, base_chance: 15, chance: 15, duration: 1, name: "обычный день", 
		description: "самый обычный день"},
	// Сокровище глубоких шахт (28 %) +++
    {obj: obj_mines_treasure_event, base_chance: 28, chance: 28, duration: 1, name: "сокровище глубоких шахт", 
		description: "ваши шахтеры нашли огромные залежи золота. получите 300 золотых в свою казну."},
	// Обещание ангела (29 %) +++
	{obj: obj_angel_promise_event, base_chance: 29, chance: 29, duration: 2, name: "обещание ангела", 
		description: "ангел снизошел с небес и даровал своему народу спокойствие следующие 2 дня."},
    // Благословение богини любви (28 %) +++
	{obj: obj_blessing_love_event, base_chance: 28, chance: 28, duration: 1, name: "благословение богини любви", 
		description: "ваши жрецы усердно молились, и прекраснейшая богиня любви удвоила население вашего городка."}
];

negative_events = [
	// Обычный день (15 %) +++
	{obj: obj_regular_day, base_chance: 15, chance: 15, duration: 1, name: "обычный день", 
		description: "самый обычный день"},
	// Атака дракона (14 %) +++
    {obj: obj_attack_dragon_event, base_chance: 14, chance: 14, duration: 1, name: "атака драконов", 
		description: "свирепая богиня драконов тиамат пробудилась и теперь ее дети несут только смерть и разрушение вашему поселению."},
	// Холера (15 %) +++
	{obj: obj_cholera_event, base_chance: 15, chance: 15, duration: 3, name: "холера",
		description: "безжалостная болезнь проснулась от анабиоза, и теперь она готова убивать всех в течении 3 дней."},
	// Налет алчных гоблинов (14 %) +++
	{obj: obj_goblin_raid_event, base_chance: 15, chance: 15, duration: 1, name: "налет алчных гоблинов", 
		description: "маленькие и мерзкие гоблины вылезли из своих нор и начали совершать налеты и грабежи."},
	// Индексация цен (14 %) +++
	{obj: obj_indexing_event, base_chance: 14, chance: 14, duration: 5, name: "индексация цен", 
		description: "люди начинают покупать больше товаров и цены на них резко удваиваются в течении рабочей недели."},
	// Проклятие прибрежных земель (14 %) +++
	{obj: obj_land_curse_event, base_chance: 14, chance: 14, duration: 1, name: "проклятие прибрежных земель", 
		description: "некоторые земли становятся не пригодны для жизни и строительства на них."},
	// Безумие волшебника (14 %) +++
	{obj: obj_wizard_madness_event, base_chance: 14, chance: 14, duration: 1, name: "безумие волшебника", 
		description: "придворный волшебник, обещающий вам власть и богатство, просит, взамен, несколько людских отпрысков на свои нужды."},
	// Восстание мертвецов (14 %) +++
    {obj: obj_dead_rising_event, base_chance: 14, chance: 14, duration: 1, name: "восстание мертвецов", 
		description: "восставшие из могил на алую луну начали свое движение на ваш город, убивая жителей и отравляя земли."}
];