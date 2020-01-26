
if (room == room_leaderboard) {
	draw_set_halign(fa_center);
	draw_set_font(font_leaderboard);
	draw_text_color(250, 450, "Server status: " + string(display), color, color, color, color, 1);
	draw_text(150, 150, "Showing the top 50 players");
	
	
	draw_text(400, 50, "----POSITION----");
	draw_text(600, 50, "------PLAYER-----");
	draw_text(800, 50, "------SCORE-----");
	draw_text(1000, 50, "------DATE------");
	



	for (var i = 0; i<ds_map_size(global.leaderboard_names) && i<50; i++) {
		var curr_player = global.leaderboard_names[? i];	
		draw_text(400, 100+(50*i), i+1);
		draw_text(600, 100+(50*i), global.leaderboard_names[? i]);
		draw_text(800, 100+(50*i), global.leaderboard_scores[? curr_player]);
		draw_text(1000, 100+(50*i), global.leaderboard_date[? curr_player]);

	}
}
draw_set_font(font_main);