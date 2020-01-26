///@description make http request

var port = 5001;
var domain = "localhost";
var connection = "http://"+string(domain)+":"+string(port)+"/api/players";
if (should_fetch) {
	http_get(connection);
	alarm[0] = cooldown_fetch;
	should_fetch = false;

}


if (display == "") {
	display = "Contacting the server...";	
}


//adjust status color to red if there is an error.
if (display != "All tasks finished...") {
	color = c_red;	
}

if (display == "All tasks finished...") {
	color = c_green;	
}

if (should_send_user && conn_success) {
	var newLeaderboardPlayer = ds_map_create();
	ds_map_add(newLeaderboardPlayer, "name", global.player_name);
	ds_map_add(newLeaderboardPlayer, "score", global.player_final_score);
	var encode_board = json_encode(newLeaderboardPlayer);
	
	

	var headerMap = ds_map_create();
	ds_map_add(headerMap, "Content-Type", "application/json");
	post = http_request("http://"+string(domain)+":"+string(port)+"/api/players", "POST", headerMap, encode_board);	
	should_send_user = false;
	should_fetch = true;
	}
