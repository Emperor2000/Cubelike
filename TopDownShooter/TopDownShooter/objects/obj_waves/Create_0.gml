/// @description Setup

randomize();

spawn_wave = -1;
spawn_delay_in_seconds = 3;
spawn_delay_time = spawn_delay_in_seconds * room_speed;
spawn_delay_progress = spawn_delay_time;

min_wave_number = 0;
max_wave_number = 30; // Set to any whole number
wave_number = min_wave_number;

min_enemy_count = 4;
max_enemy_count = 60;

