/// @description Setup

randomize();

wave_number = 0;

#region Wave Delay
spawn_wave = -1;
spawn_delay_in_seconds = 3;
spawn_delay_time = spawn_delay_in_seconds * room_speed;
spawn_delay_progress = spawn_delay_time;
#endregion

#region Spawn Enums
enum spawn_characteristics {
	first_wave,
	max_wave,
	min_count,
	max_count,
	easing_function,
	enemy_object,
	total
}

enum enemy_type {
	red,
	yellow,
	purple,
	total
}
#endregion

#region Spawn_details array

// Red Enemy
spawn_details[enemy_type.red, spawn_characteristics.first_wave] = 0;
spawn_details[enemy_type.red, spawn_characteristics.max_wave] = 30;
spawn_details[enemy_type.red, spawn_characteristics.min_count] = 1;
spawn_details[enemy_type.red, spawn_characteristics.max_count] = 60;
spawn_details[enemy_type.red, spawn_characteristics.easing_function] = ease_in_sine;
spawn_details[enemy_type.red, spawn_characteristics.enemy_object] = obj_enemy_red;

// Yellow Enemy
spawn_details[enemy_type.yellow, spawn_characteristics.first_wave] = 4;
spawn_details[enemy_type.yellow, spawn_characteristics.max_wave] = 40;
spawn_details[enemy_type.yellow, spawn_characteristics.min_count] = 1;
spawn_details[enemy_type.yellow, spawn_characteristics.max_count] = 20;
spawn_details[enemy_type.yellow, spawn_characteristics.easing_function] = ease_in_sine;
spawn_details[enemy_type.yellow, spawn_characteristics.enemy_object] = obj_enemy_yellow;

// Purple Enemy
spawn_details[enemy_type.purple, spawn_characteristics.first_wave] = 4;
spawn_details[enemy_type.purple, spawn_characteristics.max_wave] = 20;
spawn_details[enemy_type.purple, spawn_characteristics.min_count] = 1;
spawn_details[enemy_type.purple, spawn_characteristics.max_count] = 10;
spawn_details[enemy_type.purple, spawn_characteristics.easing_function] = ease_in_sine;
spawn_details[enemy_type.purple, spawn_characteristics.enemy_object] = obj_enemy_purple;


#endregion

