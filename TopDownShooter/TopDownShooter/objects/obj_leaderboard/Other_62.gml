/// @description Insert description here
// You can write your code in this editor
var json = async_load[? "result"];
show_debug_message("data: " + json);
//convert JSON to ds map
show_debug_message("test");
var map = json_decode(json);
if (map == -1) {
	show_message("Something went wrong :c");
	exit;
}
if (ds_map_exists(map, "name")) {

	var name = map[? "name"];
		show_debug_message("item " + name);
	show_message("Player name and score is " + name);
}