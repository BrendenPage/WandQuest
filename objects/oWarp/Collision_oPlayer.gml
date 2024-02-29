
// Warp should only work if the player has killed all enemies
if (instance_number(oEnemyParent) == 0) {
	// Clean up room
	if (instance_number(oEnemyParent) == 0) {
		while(instance_number(oProjectileParent) > 0) {
			instance_destroy(instance_find(oProjectileParent, 0))
		}
		for (var _i = 0; _i < array_length(global.paths_list); _i++) {
			path_delete(global.paths_list[_i])
		}
		global.paths_list = []
	}


	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x += right
	global.game.current_room_y += down
	layer_set_target_room(target_room)
	room_goto(target_room);
	if (DEBUG) {
		show_debug_message("New x: " + string(global.game.current_room_x))
		show_debug_message("New y: " + string(global.game.current_room_y))
	}
}
