image_alpha -=0.01;

speed = irandom_range(-6, 6);
if (image_index >= 5) image_speed = 0;

if (image_alpha <= 0) {
instance_destroy();	
}
//draw_sprite_ext(spr_red_2, +1, x, y, 1, 1, image_angle, c_white, 1);
//gpu_set_blendmode(bm_add);
//draw_sprite_ext(spr_red_2_blur, +1, x, y, 1, 1, image_angle, c_white, alpha_level);
//gpu_set_blendmode(bm_normal);