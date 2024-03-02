/// @description Insert description here
// You can write your code in this editor
if (instance_number(oTutorial)) {
	exit
}

with (parent) {
	clicked_choice = other
	event_user(0)
}

if (global.logging) {
	if (sprite_index == sAugments) {
		var _data = {
			curr_time: time()
		}
		cap_logger_action_no_level(AUGMENT_CHOSEN, json_stringify(_data))
	} else {
		var _card_type = "Special"
		if (sprite_index == sAttacks) {
			_card_type = "Attack"
		}
		var _data = {
			curr_time: time(),
			card_type: _card_type
		}
		cap_logger_action_no_level(CARD_CHOSEN, json_stringify(_data))
	}
}
