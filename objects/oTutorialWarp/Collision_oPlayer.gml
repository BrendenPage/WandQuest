global.current_room = target_room
global.game.player.x = target_x
global.game.player.y = target_y
clear_instances()
if (global.logging) {
	var _data = {
		curr_time: time()
	}
	cap_logger_action_no_level(TUTORIAL_WARP, json_stringify(_data))
}
layer_set_target_room(target_room)
room_goto(target_room);

