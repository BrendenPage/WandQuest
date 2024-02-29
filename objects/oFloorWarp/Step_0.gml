/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x, y, global.game.player) and instance_number(oEnemyParent) == 0) {
	activated = true
	visible = true
}

if (activated and place_meeting(x, y, global.game.player)) {

	global.game.player.remaining_health = min(global.game.player.remaining_health + global.game.player.max_health*HEAL_PERCENT, global.game.player.max_health)
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
	with (global.game) {
		event_user(7)
	}
	layer_set_target_room(target_room)
	room_goto(target_room);
	if (global.logging) {
		var _data = {
			curr_time: time()
		}
		cap_logger_action_no_level(NEXT_FLOOR, json_stringify(_data))
	}
}
