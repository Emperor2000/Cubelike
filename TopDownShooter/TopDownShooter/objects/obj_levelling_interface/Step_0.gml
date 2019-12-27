if (global.xp_since_levelling >= global.xp_goal) {
	global.player_level += 1;
	global.xp_since_levelling = 0;
}

if (room == room_score) {
	if (global.animation_modifier < 1) {
		global.animation_modifier+=0.001; //8 seconds
	}
}





global.xp_remaining = global.xp_goal - global.xp_since_levelling;
global.xp_goal = global.xp_start_rate*(global.player_level/3)*global.player_level * global.xp_incr_rate;


if ((((global.xp_since_levelling/global.xp_goal)*100)*global.animation_modifier) >= 100) {
	global.display_level +=1;
}
