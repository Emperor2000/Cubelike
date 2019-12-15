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
	var bullet = instance_create_layer(x, y, "Projectiles", obj_bullet_red);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle + irandom_range(-10, 10);
	enable_fire = false;
	alarm[0] = firing_cooldown;
	
		
		//screenshake
	if (instance_exists(obj_camera)) {
	obj_camera.shake += 20; //screenshake
	}
}

if (hp <= 0) {
	hit = true;
	obj_camera.shake += 50;
	instance_destroy();
}


if (hit == true) {
	hitdraw = true;
	hitblend = true;
	sprite_index = spr_hit;	
	//instance_create_layer(x, y, "Projectiles", o_blood_red2)
	hit = false;
	alarm[1] = 10;
	
}


if (knockingback) {
    x += lengthdir_x(-1, dir)*5;
    y += lengthdir_y(-1, dir)*5;
}