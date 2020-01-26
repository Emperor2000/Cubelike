for (i = 0; i<irandom_range(0,2); i++){
		var proj = instance_create_layer(x+irandom_range(-800, 800), y+irandom_range(-800, 800), "Effects", obj_bullet_hit_blue);
		var scale_rand = irandom_range(1, 3);
		proj.image_speed = 0.5;
		proj.image_xscale = scale_rand;
		proj.image_yscale = scale_rand;
	}