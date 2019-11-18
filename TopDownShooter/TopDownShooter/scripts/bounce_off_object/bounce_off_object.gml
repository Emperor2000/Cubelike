
//Function params

///@arg object
///@arg acceleration
///@arg maxspeed
var _object = argument0;
var _acceleration = argument1; //acceleration
var _maxspeed = argument2; //move_speed

if (!instance_exists(_object)) exit;

//Calc bounce dir
var _bounce_direction = point_direction(_object.x, _object.y, x, y);
motion_add(_bounce_direction, _acceleration);


if (speed > _maxspeed*1.2) {
	speed = _maxspeed*1.2;	
}