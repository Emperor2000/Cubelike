//blending
alpha_level = 0.9;
if (alpha_level < 0 || alpha_level >1)
	alpha_increment = -alpha_increment;



if (instance_exists(obj_player)) {
var rotate_towards_player = point_direction(x, y, obj_player.x, obj_player.y);

if (bouncing == false) {
move_towards_point(obj_player.x, obj_player.y, move_speed);	
}

//motion_add(point_direction(x, y, obj_player.x, obj_player.y), acceleration);
image_angle = rotate_towards_player;
}

if (point_distance(x, y, obj_player.x, obj_player.y) < firing_range && enable_fire) {
	var firing_angle = projectile_find_intercept_angle(x,y,bullet_speed,obj_player.x,obj_player.y,obj_player.move_horizontal,obj_player.move_vertical);
	var bullet = instance_create_layer(x, y, "Projectiles", obj_bullet_purple);
	bullet.image_angle = firing_angle;
	bullet.direction = firing_angle;
	enable_fire = false;
	alarm[0] = firing_cooldown + irandom_range(firing_cooldown/2, firing_cooldown/2);
	
		
		//screenshake
	if (instance_exists(obj_camera)) {
	obj_camera.shake += 20; //screenshake
	}
}

if (hp <= 0) {
	obj_player.current_run_score += added_score_on_death;
	global.xp_since_levelling += added_score_on_death;
	hit = true;
	obj_camera.shake += 50;
	instance_destroy();
}


if (hit == true) {
	hitblend = true;
	sprite_index = spr_hit;	
	instance_create_layer(x, y, "Projectiles", o_blood_purple2);
	instance_create_layer(x, y, "Projectiles", o_blood_purple2);
	hit = false;
	alarm[1] = 10;
	
}


if (knockingback) {
    x += lengthdir_x(-1, dir)*5;
    y += lengthdir_y(-1, dir)*5;
}