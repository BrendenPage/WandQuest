/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

var _puddle = instance_create_depth(x,y,depth+1,oSlimePuddle)
_puddle.dir = 0

if (irandom(1) == 0) {
	var _spawned_slime = instance_create_layer(x,y,"Instances",oSlime)
	_spawned_slime.remaining_health = 10
}