
// Warp should only work if the player has killed all enemies
if (instance_number(oEnemyParent) == 0) {
	show_debug_message("Previous x: " + string(global.game.current_room_x))
	show_debug_message("Previous y: " + string(global.game.current_room_y))
	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x += right
	global.game.current_room_y += down
	layer_set_target_room(target_room)
	room_goto(target_room);
	show_debug_message("New x: " + string(global.game.current_room_x))
	show_debug_message("New y: " + string(global.game.current_room_y))
}
