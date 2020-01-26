obj_leaderboard.should_send_user = true;
global.player_final_score = obj_player.current_run_score;
room_goto(room_leaderboard);
instance_destroy();