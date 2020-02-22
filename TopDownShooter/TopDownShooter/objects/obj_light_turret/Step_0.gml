
if (instance_exists(obj_enemy_parent)) {
var rotate_towards_enemy = point_direction(x, y, obj_enemy_parent.x, obj_enemy_parent.y);
image_angle = rotate_towards_enemy;



if (point_distance(x, y, obj_enemy_parent.x, obj_enemy_parent.y) < firing_range && enable_fire) {
	var bullet = instance_create_layer(x, y, "Projectiles", obj_bullet);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle + irandom_range(-10, 10);
	enable_fire = false;
	alarm[0] = firing_cooldown + irandom_range(firing_cooldown/2, firing_cooldown/2);
	
		//screenshake
		if (instance_exists(obj_camera)) {
		obj_camera.shake += 20; //screenshake
		}
	
	}

}

if (hp <= 0) {
instance_destroy();	
}