display = "";
cooldown_fetch = 18000; //cooldown for new fetch -- 300 seconds --- 5 minutes
should_fetch = true;

global.leaderboard_arr = ds_list_create();
global.leaderboard_map = ds_map_create();


global.leaderboard_names = ds_map_create();
global.leaderboard_scores = ds_map_create();
global.leaderboard_date = ds_map_create();
player = "";

