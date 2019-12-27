global.player_level = 1;
global.display_level = 1;
global.xp_from_run = 0;
global.xp_since_levelling = 0;

global.xp_goal = 0;
global.xp_start_rate = 5;
global.xp_incr_rate = 1.1;


global.xp_remaining = global.xp_goal - global.xp_since_levelling;


global.animation_modifier = 0;

global.xp_goal = global.xp_start_rate*(global.player_level/3)*global.player_level * global.xp_incr_rate;