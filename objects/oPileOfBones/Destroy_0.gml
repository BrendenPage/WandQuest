/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

var _other_enemy_in_room = false
var _own_room = room

with (oEnemyParent) {
	if (object_index != oSkeleton and object_index != oPileOfBones and room == _own_room) {
		show_debug_message(id)
		_other_enemy_in_room = true
	}
}

if (_other_enemy_in_room) {
	instance_create_layer(x,y,layer,oSkeleton)
}
