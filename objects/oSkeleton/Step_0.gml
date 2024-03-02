/// @description Insert description here
// You can write your code in this editor



event_inherited();

// Inherit the parent event

if (remaining_health == 0) {
	exit
}

var _dist = distance_to_object(global.game.target)
var _dir = point_direction(x, y, global.game.target.x, global.game.target.y)
if(_dist < TS) {
	path_end()
	mag_dir_move_and_collide_enemy(speed_, _dir)
} else {
	move_towards_player()
}

