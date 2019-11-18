instance_create_layer(x, y, "Projectiles", obj_bullet_trail);


//alpha level
alpha_level = 0.9;
if (alpha_level < 0 || alpha_level >1)
	alpha_increment = -alpha_increment;
