other.hp -=1;
instance_create_layer(x, y, "Projectiles", obj_bullet_hit_blue);
//instance_create_layer(x, y, "Projectiles", o_blood_red2);
//instance_create_layer(x, y, "Projectiles", o_blood_red_manager);
other.hit = true;
//other.x=xdprevious;
//other.y=yprevious;

//screenshake
		if (instance_exists(obj_camera)) {
		obj_camera.shake += 30;
		}
		
global.player_xp +=1;
global.count_since_level +=1;
obj_player.current_run_score += 1; //increment player score on succesfull hit
instance_create_layer(x+irandom_range(-60, 60), y+irandom_range(-60, 60), "Overlay", obj_draw_damage_1);

instance_destroy();