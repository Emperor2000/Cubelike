other.hp -=1;
instance_create_layer(x, y, "Projectiles", obj_bullet_hit_blue);



//random audio selector
var val = noone;
var rand = irandom_range(0, 3);
if (rand == 0) val = snd_hit_1; 
if (rand == 1) val = snd_hit_2;
if (rand == 2) val = snd_hit_3;
if (rand == 3) val = snd_hit_4;

var audio = audio_play_sound(val, 1, false);





//instance_create_layer(x, y, "Projectiles", o_blood_red2);
//instance_create_layer(x, y, "Projectiles", o_blood_red_manager);
other.hit = true;
//other.x=xdprevious;
//other.y=yprevious;

//screenshake
		if (instance_exists(obj_camera)) {
		obj_camera.shake += 30;
		}
		
		
obj_player.current_run_score += 1; //increment player score on succesfull hit
instance_create_layer(x+irandom_range(-60, 60), y+irandom_range(-60, 60), "Overlay", obj_draw_damage_1);

instance_destroy();