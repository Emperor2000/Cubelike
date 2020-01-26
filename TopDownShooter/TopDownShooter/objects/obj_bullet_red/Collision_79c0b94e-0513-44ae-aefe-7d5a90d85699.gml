other.hit = true; //toggle player hit variable.
other.hp -= id.damage; //subtract damage from player health


//random audio selector
var val = noone;
var rand = irandom_range(0, 3);
if (rand == 0) val = snd_hit_1; 
if (rand == 1) val = snd_hit_2;
if (rand == 2) val = snd_hit_3;
if (rand == 3) val = snd_hit_4;

var audio = audio_play_sound(val, 1, false);


instance_destroy(id); //destroy bullet instance