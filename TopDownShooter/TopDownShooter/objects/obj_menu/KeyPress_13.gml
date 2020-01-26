/// @description selection

switch(menu_index) {

	case 0:
	room_goto(room0);
	break;
	
	
	case 1:
	room_goto(room_shop);
	break;
	
	
	case 2:
	room_goto(room_leaderboard);
	break;
	
	
	case 3:
	room_goto(room_options);
	break;
	
	
	case 4:
	game_end();
	break;
	
}