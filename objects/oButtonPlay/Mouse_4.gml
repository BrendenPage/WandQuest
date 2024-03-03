/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (ready) {
	if (global.logging) {
			_data = {
				curr_time: time(),
				ab_test_category: global.ab_test_category
				}
		cap_logger_action_no_level(START_GAME, json_stringify(_data))
	}
	start_game()
}
