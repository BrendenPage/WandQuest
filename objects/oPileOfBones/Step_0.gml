/// @description Insert description here
// You can write your code in this editor

frames_until_respawn = max(frames_until_respawn - 1,0)

if (frames_until_respawn == 0) {
	var _other_enemy_in_room = false
	var _own_room = room

	with (oEnemyParent) {
		if (object_index != oSkeleton and room == _own_room) {
			_other_enemy_in_room = true
		}
	}

	if (_other_enemy_in_room) {
		instance_create_layer(x,y,layer,oSkeleton)
	}
	instance_destroy()
}
