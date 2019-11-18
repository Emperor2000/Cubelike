//1024, 768 | 1920, 1080
//view_width = (1920/10)*7;
//view_height = (1080/10)*7;
view_width = 1920;
view_height = 1080;
window_scale = 1;
//window_scale = (1/10)*7;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);

shake = 0;