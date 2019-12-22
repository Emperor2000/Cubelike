if (global.remaining <0) {
global.remaining = 0;	
}


global.remaining = ((global.xp_start_rate*(global.current_level/3) )*(global.current_level*global.xp_incr_rate)) - global.count_since_level;
if (global.count_since_level >= (global.xp_start_rate*(global.current_level/3) )*(global.current_level *global.xp_incr_rate)) {

	global.current_level +=1;
	global.count_since_level = 0 + global.remaining;

	//global.count_since_level = 0 + global.remaining;
	//global.count_since_level = 0 + (global.count_since_level-(100)*global.current_level *1.1);
}



