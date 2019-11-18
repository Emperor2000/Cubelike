draw_sprite_ext(spr_bullet, 0, x, y, 1, 1, 0, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_bullet_blur2, 0, x, y, 1, 1, 0, c_white, alpha_level);
gpu_set_blendmode(bm_normal);