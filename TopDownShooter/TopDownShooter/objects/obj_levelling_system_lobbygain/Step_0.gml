//global.progress_modifier = 1;
if (room == room_score) {
	if (global.progress_modifier < 1) {
		global.progress_modifier+=0.001; //8 seconds
	}
}




global.remaining = ((global.xp_start_rate*(global.current_level/3) )*(global.current_level*global.xp_incr_rate)) - global.count_since_level;


if ((((global.count_since_level/((global.xp_start_rate*(global.current_level/3) )*global.current_level *global.xp_incr_rate))*100)*global.progress_modifier) >= 100) {
	global.display_level +=1;
	
}







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








