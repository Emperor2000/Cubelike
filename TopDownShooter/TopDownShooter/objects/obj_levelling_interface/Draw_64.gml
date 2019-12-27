//if (room == room_score) {
draw_healthbar(300, 400, 1000, 500, (global.xp_since_levelling/global.xp_goal)*100*global.animation_modifier, c_black, c_navy, c_aqua, 0, true, true);
draw_text(200, 450, "LEVEL: " + string(global.player_level));
draw_text(200, 850, "DLEVEL: " + string(global.display_level));
draw_text(200, 550, "REMAINING: " + string(global.xp_remaining));
draw_text(200, 650, "COUNTSINCELEVEL: " + string(global.xp_since_levelling));
draw_text(200, 750, "GOAL: " + string(global.xp_goal));
//}