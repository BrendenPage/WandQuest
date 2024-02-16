// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_towards_player(){
	// Generate the path towards the player
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, global.game.player.x, global.game.player.y, choose(0,1))
	if (_found_player) {
		path_start(path, speed_, path_action_stop, false)
	}
}

function scale_enemy(_enemy) {
	var _wing_scale = 1
	_enemy.image_xscale = ds_map_find_value(enemy_scale, _enemy.object_index)*_wing_scale
	_enemy.image_yscale = ds_map_find_value(enemy_scale, _enemy.object_index)*_wing_scale
}