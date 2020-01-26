//alarm1
var _comet_x = irandom_range(-200, -10);
var _comet_y = irandom_range(0, 700);
instance_create_layer(_comet_x, _comet_y, "Instances", obj_comet);
alarm[1] = 300 + irandom_range(-75, 75);