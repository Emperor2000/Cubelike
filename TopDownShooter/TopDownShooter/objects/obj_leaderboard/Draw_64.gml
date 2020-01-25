if (room == room_leaderboard) {
	draw_text(50, 150, "Server status: " + string(display));


	draw_text(600, 50, "------PLAYER-----");
	draw_text(800, 50, "------SCORE-----");
	draw_text(1000, 50, "------DATE------");




	for (var i = 0; i<ds_map_size(global.leaderboard_names); i++) {
		var curr_player = global.leaderboard_names[? i];	
		draw_text(600, 100+(50*i), global.leaderboard_names[? i]);
		draw_text(800, 100+(50*i), global.leaderboard_scores[? curr_player]);
		draw_text(1000, 100+(50*i), global.leaderboard_date[? curr_player]);

	}
}