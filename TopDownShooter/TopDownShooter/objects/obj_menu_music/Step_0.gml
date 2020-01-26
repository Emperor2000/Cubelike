if (room != room_menu) {
	id.visible = false;
	audio_sound_gain(snd_menu_music, 0, 0);	
} else {
	id.visible = true;	
}

if (enabled == false) {
	sprite_index = spr_music_disabled;
	//audio_stop_sound(snd_menu_music);
	audio_sound_gain(snd_menu_music, 0, 0);
	playing = false;
}

if (enabled && playing == false) {
	sprite_index = spr_music_enabled;
	audio_sound_gain(snd_menu_music, 0.2, 0.5);
	playing = true;
}

//if (enabled) sprite_index = spr_music_enabled;
//if (enabled == false) sprite_index = spr_music_disabled;


/*
if (global.enable_music == false) {
image_index = 1;
audio_sound_gain(snd_menu_music, 0, 1);
}

if (global.enable_music == true) {	
image_index = 0;
audio_sound_gain(snd_menu_music, 10, 500);
}


if (global.enable_music == noone) {
global.main_theme = audio_play_sound(snd_menu_music, 4, false);
global.enable_music = true;	
}
*/