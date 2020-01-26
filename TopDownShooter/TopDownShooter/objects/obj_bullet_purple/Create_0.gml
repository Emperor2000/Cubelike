speed = 4;
angle = image_angle;
damage = 1;




//blending
alpha_level = 0.5;
alpha_increment = 0.005;


	//random audio selector
	var val = noone;
	var rand = irandom_range(0, 3);
	if (rand == 0) val = snd_fire_1; 
	if (rand == 1) val = snd_fire_2;
	if (rand == 2) val = snd_fire_3;
	if (rand == 3) val = snd_fire_4;

	var audio = audio_play_sound(val, 1, false);
