//alpha level
alpha_level = 0.9;
if (alpha_level < 0 || alpha_level >1)
	alpha_increment = -alpha_increment;




image_angle = point_direction(x, y, mouse_x, mouse_y);
#region firing
if (mouse_check_button(mb_left)) {
	if (enable_fire) {
		instance_create_layer(x, y, "Projectiles", obj_bullet);
		
		//screenshake
		if (instance_exists(obj_camera)) {
		obj_camera.shake += 20;
		}
		
		
		
//		recoil_count += recoil_increment;
		alarm[0] = firing_cooldown;
		enable_fire = false;
	}

	
}
#endregion
//	recoil_count -= recoil_decrement;
//if (recoil_count >= 30) {
//recoil_count = 0;	
//}



#region Player movement
//step 1. Check if player is pressing movement keys.
//step 2. If the player is pressing movement keys, move in the correct direction.

//which key is pressed?
horizontal_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));	//Move horizontal
vertical_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));		//Move vertical

//move speed
move_horizontal = (horizontal_input * move_speed);
move_vertical = (vertical_input * move_speed);


//Maximum move speed
if (move_horizontal>move_speed) {
	move_horizontal = move_speed;
}
if (move_vertical>move_speed) {
	move_vertical = move_speed;
}
if (move_horizontal<-move_speed) {
	move_horizontal = -move_speed;
}
if (move_vertical<-move_speed) {
	move_vertical =-move_speed;
}


x+=move_horizontal;
y+=move_vertical;


#endregion







if (hit == true) {
	hitblend = true;
	sprite_index = spr_hit;	
	//instance_create_layer(x, y, "Projectiles", o_blood_purple2);
	//instance_create_layer(x, y, "Projectiles", o_blood_purple2);
	hit = false;
	alarm[1] = 10;
	obj_camera.shake += 200;
}



if (hp <= 0) {
	hit = false;
	//obj_camera.shake += 50;
	//save score and go to game
}










/*hsp*=0.8;
vsp*=0.8;*/