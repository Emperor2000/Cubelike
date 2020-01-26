
//step
	repeat (1) {
		
		//_offset is used to randomize the draw position of the particle effect.
		var _offset = random_range(-8, 8);
		//var _offset = 0;
		//_length is used to calculate the distance len towards the image_angle.
		var _length = -32;
		//current x pos + lengthdir to calculate engine/thruster pos.
		//var _x = x + lengthdir_x(_length, image_angle + _offset);
		//current y pos + lengthdir to calculate engine_thruster pos.
		//var _y = y + lengthdir_y(_length, image_angle + _offset);
		//instance_create_layer(_x, _y, "Effects", o_explosion_particle);
		instance_create_layer(x-irandom_range(-4, 10), y-irandom_range(-10, 10), "Effects", obj_comet_trail_particle);
	}
	
	
	
if (x > room_width*1.2) {
	instance_destroy();	
}