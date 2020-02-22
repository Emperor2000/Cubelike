/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_small);
draw_text(150, 50, "Score: " + string(current_run_score));
draw_text(350, 50, "Credits: " + string(current_run_credits));
draw_text(550, 50, "1. Light Turret $200");
draw_text(750, 50, "2. Heavy Turret $500");
draw_text(950, 50, "3. Defensive Matrix $1000");
draw_text(1150, 50, "4. Scout fleet $1500");
draw_text(1350, 50, "5. Auto turret $2000");
draw_set_font(font_main);