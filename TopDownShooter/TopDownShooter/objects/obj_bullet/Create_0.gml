speed = 8;
image_angle = obj_player.image_angle;
direction = obj_player.image_angle + irandom_range(-10, 10) + irandom_range(-obj_player.recoil_count, obj_player.recoil_count);
//TODO: direction dependency to obj player





//blending
alpha_level = 0.5;
alpha_increment = 0.005;


//TODO: Improved audio
	//random audio selector
	var val = noone;
	var rand = irandom_range(0, 3);
	if (rand == 0) val = snd_fire_1; 
	if (rand == 1) val = snd_fire_1;
	if (rand == 2) val = snd_fire_3;
	if (rand == 3) val = snd_fire_4;

	var audio = audio_play_sound(val, 1, false);
