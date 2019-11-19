/// @description Manage Waves

#region Spawn wave
if spawn_wave {
	// Calculate number of enemies to spawn
	var enemy_multiplier = ease_in_sine(wave_number,min_wave_number,max_wave_number);
	var enemy_count = round(min_enemy_count + ((max_enemy_count-min_enemy_count) * enemy_multiplier));
	// Spawn Enemies
	repeat(enemy_count) {
		spawn_enemy_red();
	}
	// Increment wave_number
	wave_number = clamp(wave_number+1,min_wave_number,max_wave_number);
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