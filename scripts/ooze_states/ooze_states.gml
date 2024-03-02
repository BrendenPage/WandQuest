// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ooze_idle(){
	mag_dir_move_and_collide(speed_/2,idle_move_dir)
	
	if (irandom(10) == 0) {
		idle_move_dir = irandom(359)
	}
	
	if (state_ctr == 0) {
		state = ooze_move
		state_ctr = move_time
	}
}

function ooze_move(){
	var _dist = distance_to_object(global.game.target)
	var _dir = point_direction(x, y, global.game.target.x, global.game.target.y)
	if(_dist < TS) {
		path_end()
		mag_dir_move_and_collide_enemy(speed_, _dir)
	} else {
		move_towards_player()
	}
	if (state_ctr == 0) {
		state = ooze_idle
		state_ctr = move_time
		path_end()
	}
}