/// @description spawn_enemy
/// @param enemy_object

var enemy = argument0;

// Spawn location tags
left = 0;
right = 1;
top = 2;
bottom = 3;

// Define spawn coordinates
min_x = 0;
min_y = 0;
max_x = room_width;
max_y = room_height;

// Spawn location array
spawn[left] = min_x;
spawn[right] = max_x;
spawn[top] = min_y;
spawn[bottom] = max_y;

// Get spawn_side
var spawn_side = choose(left,right,top,bottom);

// Get spawn_x and spawn_y
if spawn_side == left || spawn_side == right {
	spawn_x = spawn[spawn_side];
	spawn_y = irandom_range(min_y,max_y);
}
if spawn_side == top || spawn_side == bottom {
	spawn_y = spawn[spawn_side];
	spawn_x = irandom_range(min_x,max_x);
}

// Spawn
instance_create_layer(spawn_x,spawn_y,"Instances", enemy);




