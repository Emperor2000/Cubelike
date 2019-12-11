/// @description projectile_find_angle
/// @param projectile_xpos
/// @param projectile_ypos
/// @param projectile_speed
/// @param target_xpos
/// @param target_ypos
/// @param target_xspeed
/// @param target_yspeed

var projectile_xpos = argument0;
var projectile_ypos = argument1;
var projectile_speed = argument2;
var target_xpos = argument3;
var target_ypos = argument4;
var target_xspeed = argument5;
var target_yspeed = argument6;
var max_prediction_frames = room_speed * 3; // Maximum number of extrapolation frames

// Store best angle and shortest distance between projectile and target at this angle
var best_angle = -1;
var shortest_distance = -1;

var frame_number = 1; // How many frames from now we are extrapolating
repeat(max_prediction_frames) {
	
	// Get angle for intercept and distance of projectile from intercept
	var new_target_xpos = target_xpos + (frame_number * target_xspeed);
	var new_target_ypos = target_ypos + (frame_number * target_yspeed);
	var angle_to_intercept = point_direction(projectile_xpos,projectile_ypos,new_target_xpos,new_target_ypos);
	var new_projectile_xpos = projectile_xpos + (frame_number * lengthdir_x(projectile_speed,angle_to_intercept));
	var new_projectile_ypos = projectile_ypos + (frame_number * lengthdir_y(projectile_speed,angle_to_intercept));
	var distance_to_intercept = point_distance(new_projectile_xpos,new_projectile_ypos,new_target_xpos,new_target_ypos);
	
	// Store angle and distance
	if distance_to_intercept < shortest_distance || !shortest_distance {
		shortest_distance = distance_to_intercept;
		best_angle = angle_to_intercept;
	}
	
	// If distance is greater than that stored then return angle
	if distance_to_intercept > shortest_distance && shortest_distance != -1 {
		return best_angle;
	}
	
	frame_number++;
}