if (room == room_score) {
draw_healthbar(300, 400, 1000, 500, ((global.count_since_level/((global.xp_start_rate*(global.current_level/3) )*global.current_level *global.xp_incr_rate))*100)*global.progress_modifier, c_black, c_navy, c_aqua, 0, true, true);
draw_text(200, 450, "LEVEL: " + string(global.current_level));
draw_text(200, 850, "DISPLAYLEVEL: " + string(global.current_level));
draw_text(200, 550, "REMAINING: " + string(global.remaining));
draw_text(200, 650, "COUNTSINCELEVEL: " + string(global.count_since_level));
draw_text(200, 750, "GOAL: " + string(((global.xp_start_rate*(global.current_level/3))*(global.current_level*global.xp_incr_rate))));
}