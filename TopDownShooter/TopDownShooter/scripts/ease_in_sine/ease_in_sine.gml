/// @description ease_in_sine
/// @param current_progress
/// @param start
/// @param finish

var current = argument0;
var start = argument1;
var finish = argument2;

// Check current value is above start value
if current < start {
	return 0;	
}

// Normalize current value
var progress = (current - start) / finish;

var result = (1 + sin((pi/2 * progress) - pi/2))/2;
return result;