/// @description Insert description here
// You can write your code in this editor

if (num_wings_cleared() == 4 and !activated) {
	activated = true
	visible = true
}

if (activated and place_meeting(x, y, global.game.player)) {

	global.game.player.remaining_health = min(global.game.player.remaining_health + global.game.player.max_health*HEAL_PERCENT, global.game.player.max_health)
	// Clean up room
	clear_instances()
	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x = 5
	global.game.current_room_y = 5
	layer_set_target_room(target_room)
	room_goto(target_room);
	if (global.logging) {
		var _data = {
			curr_time: time()
		}
		cap_logger_action_no_level(BOSS_ENTRY, json_stringify(_data))
	}
}
