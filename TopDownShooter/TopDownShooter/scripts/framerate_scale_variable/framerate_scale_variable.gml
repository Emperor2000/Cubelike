/// @description framerate_scale_value
/// @param value

var input_value = argument0;
var desired_framerate = room_speed;

var scaling = delta_time*desired_framerate/1000000;

var adjusted_value = scaling*input_value;

return adjusted_value;