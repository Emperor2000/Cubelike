	//knockback
	dir = point_direction(x, y, other.x, other.y);
	knockingback = true;
	alarm[2] = room_speed / 10 // knockback duration