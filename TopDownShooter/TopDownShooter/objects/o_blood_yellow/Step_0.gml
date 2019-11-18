
image_alpha -=0.01;

speed = irandom_range(-6, 6);
if (image_index >= 5) image_speed = 0;

if (image_alpha <= 0) {
instance_destroy();	
}