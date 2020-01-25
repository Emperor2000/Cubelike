/// @description Insert description here
// You can write your code in this editor
var json = async_load[? "result"];
if (json != noone) {
display = "parsing data...";	
} else {
display = "An error has occured. Unexpected response from server";
}

show_debug_message("data: " + json);
//convert JSON to ds map
show_debug_message("converting json...");
display = "Converting received data...";
//data parsing
var result_map = json_decode(json);
var list = ds_map_find_value(result_map, "data");

if (list != undefined) {

var size = ds_list_size(list);




for (var n = 0; n < ds_list_size(list); n++;)
   {
   var map = ds_list_find_value(list, n);
   var curr = ds_map_find_first(map);
 //  show_debug_message("map........................" + string(map));
 //  show_debug_message("current...................." + string(curr));
         global.Name[n] = ds_map_find_value(map, "name");
	  global.Score[n] = ds_map_find_value(map, "score");
	  	  global.CreateDate[n] = ds_map_find_value(map, "create_date");
	     show_debug_message("player...................." + string(global.Name[n]));
		 show_debug_message("player_score...................." + string(global.Score[n]));
		 show_debug_message("date...................." + string(global.CreateDate[n]));
		// ds_list_add("player&score",string(global.Name[n]) + " : " + string(global.Score[n]));
		 ds_map_add(global.leaderboard_map, global.Name[n], global.Score[n]);
		 ds_map_add(global.leaderboard_names, n, global.Name[n]);
		 ds_map_add(global.leaderboard_scores, global.Name[n], global.Score[n]);
		 ds_map_add(global.leaderboard_date, global.Name[n], global.CreateDate[n]);
		 //TODO: Destroy ds maps to prevent memory leaks
   while (is_string(curr))
      {
      curr = ds_map_find_next(map, curr);
      }
   ds_map_destroy(map);
   }
ds_list_destroy(list);
ds_map_destroy(result_map);





for (var i = 0; i<ds_map_size(global.leaderboard_names); i++) {
	var curr_player = global.leaderboard_names[? i];
//	var curr_player = ds_map_find_next(i, "player");
	show_debug_message(curr_player);	
	show_debug_message(global.leaderboard_scores[? curr_player]);
	show_debug_message(global.leaderboard_date[? curr_player]);
}
display = "All tasks finished...";


} else {
display = "The server could not be reached...";	
}