draw_sprite_ext(spr_bullet_yellow, 0, x, y, 1, 1, 0, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_bullet_yellow_blur, 0, x, y, 1, 1, 1, c_white, alpha_level);
gpu_set_blendmode(bm_normal);