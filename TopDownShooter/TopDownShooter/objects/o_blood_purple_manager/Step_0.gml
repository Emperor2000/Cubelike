if (manage_count <= manage_max) {
	instance_create_layer(x, y, "Projectiles", o_blood_purple2);
	//instance_create_layer(x, y, "Projectiles", o_blood_red2);
	manage_count++;
	//alarm[0] = irandom_range(-1, 1);
}


if (manage_count >= manage_max) {	
	instance_destroy();
}