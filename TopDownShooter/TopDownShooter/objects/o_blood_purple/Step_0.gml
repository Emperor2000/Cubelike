if (image_index == 6) image_speed = 0;

image_alpha -=0.01;


if (image_alpha <= 0) {
instance_destroy();	
}