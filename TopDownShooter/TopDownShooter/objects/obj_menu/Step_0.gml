/// @description key inputs

//TODO: Add gamepad/control customization here

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

//animation / transition
var i = 0;
repeat(buttons) {
	if (unfold[i] == 1) i++;
	
	if (i < buttons) unfold[i] = min(1, unfold[i] + 0.02);
	if (i + 1 < buttons) unfold[i + 1] = min(1, unfold[i+1] + 0.005);
}


if (menu_index != last_selected) {
	part_particles_create(particle_effects, menu_x, menu_y + button_height/2 + (button_height + button_padding) * menu_index, box_flash, 1);
	audio_play_sound(snd_menu_switch, 1, false); //play sound on menu switch
	
}

last_selected = menu_index;
