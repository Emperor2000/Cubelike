/// @description Menu

menu_x = x;
menu_y = y;
button_height = 48;
button_width = 512;
button_padding = 16;
//buttons
button[0] = "Play";
button[1] = "Shop";
button[2] = "Leaderboards";
button[3] = "Options";
button[4] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;


var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;
}


//particle system
particle_effects = part_system_create();
part_system_depth(particle_effects, -1000); //depth, on top of everything.

box_flash = part_type_create();
part_type_shape(box_flash, pt_shape_flare);
part_type_size(box_flash, 5, 5, -0.02, 0);
part_type_color3(box_flash, c_aqua, c_aqua, c_white);
part_type_alpha3(box_flash, 0.3, 0.5, 0);
part_type_blend(box_flash, true);
part_type_life(box_flash, 30, 30);