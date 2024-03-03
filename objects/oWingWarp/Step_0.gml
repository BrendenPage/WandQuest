/// @description Insert description here
// You can write your code in this editor


if (!place_meeting(x, y, global.game.player) and instance_number(oEnemyParent) == 0) {
	activated = true
	visible = true
}

if (activated and place_meeting(x, y, global.game.player)) {
	if (!first_use) {
		first_use = true
		global.game.player.remaining_health = min(global.game.player.remaining_health + global.game.player.max_health*HEAL_PERCENT, global.game.player.max_health)
	}
	// Clean up room
	if (instance_number(oEnemyParent) == 0) {
		clear_instances()
		
		for (var _i = 0; _i < array_length(global.paths_list); _i++) {
			path_delete(global.paths_list[_i])
		}
		global.paths_list = []
	}
	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x = 5
	global.game.current_room_y = 5
	layer_set_target_room(target_room)
	room_goto(target_room);
}
