/// @description ease_in_sine
/// @param current_value
/// @param minimum_value
/// @param maximum_value

var current = argument0;
var minimum = argument1;
var maximum = argument2;

// Normalize current value
var progress = (current - minimum) / maximum;

var result = (1 + sin((pi/2 * progress) - pi/2))/2;
return result;