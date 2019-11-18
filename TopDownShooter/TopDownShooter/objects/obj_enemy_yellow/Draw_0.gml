if (hitblend == false) {
draw_sprite_ext(spr_yellow_enemy_alt, 0, x, y, 1, 1, image_angle, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_yellow_enemy_blur_alt, 0, x, y, 1, 1, image_angle, c_white, alpha_level);

} else {
draw_sprite_ext(spr_hit, 0, x, y, 1, 1, image_angle, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_hit_blur, 0, x, y, 1, 1, image_angle, c_white, alpha_level);
}
gpu_set_blendmode(bm_normal);