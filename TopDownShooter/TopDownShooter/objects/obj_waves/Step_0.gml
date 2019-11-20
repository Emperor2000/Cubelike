/// @description Manage Waves

#region Spawn wave
if spawn_wave {
	// Iterate through each enemy type
	var number_of_enemy_types = enemy_type.total;
	var current_enemy_type = 0;
	repeat(number_of_enemy_types) {
		
		// Get easing function result
		var wave_when_first_spawned = spawn_details[current_enemy_type,spawn_characteristics.first_wave];
		var wave_when_max_spawned = spawn_details[current_enemy_type, spawn_characteristics.max_wave];
		var adjusted_wave_number = clamp(wave_number,0,wave_when_max_spawned);
		var function = spawn_details[current_enemy_type, spawn_characteristics.easing_function];
		var enemy_multiplier = script_execute(function,adjusted_wave_number,wave_when_first_spawned,wave_when_max_spawned);
		
		// Calculate number of enemies to spawn
		var min_enemy_count = spawn_details[current_enemy_type,spawn_characteristics.min_count];
		var enemy_count = round((ceil(enemy_multiplier) * min_enemy_count) + ((spawn_details[current_enemy_type,spawn_characteristics.max_count]-min_enemy_count) * enemy_multiplier));
		
		// Spawn Enemies
		repeat(enemy_count) {
			spawn_enemy(spawn_details[current_enemy_type, spawn_characteristics.enemy_object]);
		}
		
		// Increment Enemy Type
		current_enemy_type++;
	}
	
	// Increment wave_number
	wave_number++;
	
	// Stop spawning and reset delay
	spawn_wave = -1;
	spawn_delay_progress = spawn_delay_time;
	
}


#endregion

#region Spawn Delay
if !instance_exists(obj_enemy_parent) && spawn_wave == -1 {
	spawn_delay_progress -= framerate_scale_variable(1);
	if spawn_delay_progress <= 0 {
		spawn_wave = 1;	
	}
		
}
#endregion