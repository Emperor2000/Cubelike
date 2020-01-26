/// @description Draw to screen

var i = 0;
repeat(buttons) {
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle); //vertically draw center
	
	xx = menu_x;
	yy = menu_y + (button_height + button_padding) * i+512*(1-unfold[i]);
	
	draw_set_color(c_dkgray);
	draw_rectangle(xx - button_width/2, yy, xx - button_width/2 +button_width, yy+button_height, false);
	
	draw_set_color(c_ltgray);
	
	if (menu_index == i) {
	draw_set_color(c_aqua);	
	}
	draw_text(xx, yy + button_height/2, button[i]);
	i++;
}