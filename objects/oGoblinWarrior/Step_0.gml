/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

var _dist = distance_to_object(global.game.player)
var _dir = point_direction(x, y, global.game.player.x, global.game.player.y)
if(_dist < TS) {
	path_end()
	mag_dir_move_and_collide_enemy(speed_, _dir)
} else {
	move_towards_player()
}
