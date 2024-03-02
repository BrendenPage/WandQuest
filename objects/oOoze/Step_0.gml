/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if (remaining_health == 0) {
	exit
}

state_ctr = max(0,state_ctr - 1)

script_execute(state)

puddle_ctr = max(0,puddle_ctr - 1)

if (puddle_ctr == 0) {
	puddle_ctr = puddle_wait
	var _puddle = instance_create_depth(x,y,depth-1,oSlimePuddle)
	_puddle.dir = 0
	_puddle.image_xscale = 2
	_puddle.image_yscale = 2
}