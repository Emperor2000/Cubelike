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
	var bullet = instance_create_layer(x, y, "Projectiles", obj_bullet_red);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle + irandom_range(-10, 10);
	enable_fire = false;
	alarm[0] = firing_cooldown + irandom_range(firing_cooldown/2, firing_cooldown/2);
	
		
		//screenshake
	if (instance_exists(obj_camera)) {
	obj_camera.shake += 20; //screenshake
	}
}

if (hp <= 0) {
	global.RED_TOKENS += 1;
	obj_player.current_run_score += 5;
	obj_player.current_run_credits += 5;
	instance_create_layer(x+irandom_range(-60, 60), y+irandom_range(-60, 60), "Overlay", obj_draw_damage_5);
	
	
	//random audio selector
	var val = noone;
	var rand = irandom_range(0, 3);
	if (rand == 0) val = snd_explode_1; 
	if (rand == 1) val = snd_explode_2;
	if (rand == 2) val = snd_explode_3;
	if (rand == 3) val = snd_explode_4;

	var audio = audio_play_sound(val, 1, false);

	
	
	hit = true;
	obj_camera.shake += 50;
	instance_destroy();
}


if (hit == true) {
	hitblend = true;
	sprite_index = spr_hit;	
	instance_create_layer(x, y, "Projectiles", o_blood_red2);
	instance_create_layer(x, y, "Projectiles", o_blood_red2);
	hit = false;
	alarm[1] = 10;
	
}


if (knockingback) {
    x += lengthdir_x(-1, dir)*5;
    y += lengthdir_y(-1, dir)*5;
}