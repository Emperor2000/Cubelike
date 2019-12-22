//blending
alpha_level = 0.9;
if (alpha_level < 0 || alpha_level >1)
	alpha_increment = -alpha_increment;



if (instance_exists(obj_player)) {
var rotate_towards_player = point_direction(x, y, obj_player.x, obj_player.y);
move_towards_point(obj_player.x, obj_player.y, move_speed);	
image_angle = rotate_towards_player;
}

if (point_distance(x, y, obj_player.x, obj_player.y) < firing_range && enable_fire) {
	var bullet = instance_create_layer(x, y, "Projectiles", obj_bullet_yellow);
	var bullet2 = instance_create_layer(x, y, "Projectiles", obj_bullet_yellow);
	var bullet3 = instance_create_layer(x, y, "Projectiles", obj_bullet_yellow);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle;
	bullet2.image_angle = image_angle;
	bullet2.direction = image_angle - spread;
	bullet3.image_angle = image_angle;
	bullet3.direction = image_angle + spread;
	enable_fire = false;
	alarm[0] = firing_cooldown;
	
		
		//screenshake
	if (instance_exists(obj_camera)) {
	obj_camera.shake += 20; //screenshake
	}
}

if (hp <= 0) {
	obj_player.current_run_score += added_score_on_death;
	global.player_xp += added_score_on_death;
	global.count_since_level += added_score_on_death;
	hit = true;
	obj_camera.shake += 50;
	instance_destroy();
}


if (hit == true) {
	hitblend = true;
	sprite_index = spr_hit;	
	instance_create_layer(x, y, "Projectiles", o_blood_yellow);
	instance_create_layer(x, y, "Projectiles", o_blood_yellow);
	hit = false;
	alarm[1] = 10;
	
}


if (knockingback) {
    x += lengthdir_x(-1, dir)*5;
    y += lengthdir_y(-1, dir)*5;
}