move_speed = SPEED*speed_modifier;
var _key_left = keyboard_check(ord("A"))
var _key_right = keyboard_check(ord("D"))
var _key_up = keyboard_check(ord("W"))
var _key_down = keyboard_check(ord("S"))

var _x_input = _key_right - _key_left
var _y_input = _key_down - _key_up

var _input_direction = point_direction(0,0,_x_input,_y_input)
var _input_magnitude = ((_x_input != 0) || (_y_input != 0)) * move_speed

var _x_speed = lengthdir_x(_input_magnitude,_input_direction)
var _y_speed = lengthdir_y(_input_magnitude,_input_direction)

move_and_collide(_x_speed, _y_speed, oCollide, 4, 0, 0, move_speed, move_speed);
