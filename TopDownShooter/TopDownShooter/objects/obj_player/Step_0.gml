//alpha level
alpha_level = 0.9;
if (alpha_level < 0 || alpha_level >1)
	alpha_increment = -alpha_increment;




image_angle = point_direction(x, y, mouse_x, mouse_y);
#region firing
if (mouse_check_button(mb_left) && hp > 0) {
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
	//alarm[1] = 10;
	obj_camera.shake += 200;
}



if (hp <= 0) {
	//obj_camera.shake += 10;
	hit = false;
	//room_restart();
	global.player_final_score = self.current_run_score;
	for (i = 0; i<5; i++){
		var proj = instance_create_layer(x+irandom_range(-240, 240), y+irandom_range(-240, 240), "Projectiles", obj_bullet_hit_blue);
		var scale_rand = irandom_range(1, 3);
		proj.image_xscale = scale_rand;
		proj.image_yscale = scale_rand;
	}
	obj_camera.shake = 0;
	if (trigger_death == false) {
	var audio = audio_play_sound(snd_explode_3, 1, false);
	//alarm[1] = 300;
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_run_input);
	trigger_death = true;
	}
	//room_goto(room_leaderboard);
	//obj_camera.shake += 50;
	//save score and go to game
}


if (pressed1) {
if (current_run_credits >= 100) {
	
		obj_cursor.sprite_index = spr_blue_ally;

	if (mouse_check_button_pressed(mb_right)) {
		instance_create_layer(obj_cursor.x,obj_cursor.y,"Instances", obj_light_turret);
		current_run_credits -=100;
		pressed1=false;
	}
	
		with (obj_cursor) {
		obj_cursor.sprite_index = spr_pointer;
		}
	}
	
}






/*hsp*=0.8;
vsp*=0.8;*/