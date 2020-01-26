if (keyboard_check(vk_anykey) and string_length(global.player_name) < 12) {
	global.player_name = global.player_name + string(keyboard_string);	
	keyboard_string = "";
}

if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2) {
	global.player_name = string_delete(global.player_name, string_length(global.player_name), 1);
	delete_timer = 0;
	keyboard_string = "";
}


if (keyboard_check_pressed(vk_backspace)) {
	global.player_name = string_delete(global.player_name, string_length(global.player_name), 1);
	keyboard_string = "";
	delete_timer = -4;
}


//timer update
if (delete_timer != 2) {
	delete_timer ++;	
}
