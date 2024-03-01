/// @description Insert description here
// You can write your code in this editor

event_inherited()

var _dir = point_direction(x,y,global.game.target.x,global.game.target.y)
var _scale_abs = abs(image_xscale)

if (_dir > 90 and _dir < 270) {
	image_xscale = -_scale_abs
}

if (remaining_health == 0) {
	exit
}

state_ctr = max(0,state_ctr - 1)

script_execute(state)