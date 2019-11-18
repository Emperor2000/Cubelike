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
		
		




instance_destroy();