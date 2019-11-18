
/// @description Parallax scrolling

//Define layer id's
var _layer_id1 = layer_get_id("Backgrounds_2");
var _layer_id2 = layer_get_id("Backgrounds_3");
var _layer_id3 = layer_get_id("Backgrounds_4");


//Keep player coordinated to camera view
layer_x(_layer_id1, lerp(0, camera_get_view_x(view_camera[0]), 0.7));
layer_x(_layer_id2, lerp(0, camera_get_view_x(view_camera[0]), 0.9));
layer_x(_layer_id3, lerp(0, camera_get_view_x(view_camera[0]), 0.5));