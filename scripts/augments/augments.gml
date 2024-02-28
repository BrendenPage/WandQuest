// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro AUGMENT_MOVEMENT_INC 0
#macro AUGMENT_ATTACK_DEC 1
#macro AUGMENT_SPECIAL_DEC 2
#macro AUGMENT_SHUFFLE_DEC 3
#macro AUGMENT_HOMING_SHOT 4


function augment(_augment_index){
	switch(_augment_index) {
		case AUGMENT_MOVEMENT_INC:
			global.game.player.speed_modifier *= 1.5
			break
		case AUGMENT_ATTACK_DEC:
			global.game.player.attack_cooldown_modifier *= 0.75
			break
		case AUGMENT_SPECIAL_DEC:
			global.game.player.special_cooldown_modifier *= 0.75
			break
		case AUGMENT_SHUFFLE_DEC:
			global.game.player.shuffle_modifier *= 0.75
			break
		case AUGMENT_HOMING_SHOT:
			if (global.game.player.homing) {
				// Increase homing strength
				global.game.player.homing_strength *= 1.5
			}
			global.game.player.homing = true
			break
		default:
			if (DEBUG) {
				show_debug_message("Unknown augment selected")
			}
	}
	
	if (global.logging) {
		var _data = {
			curr_time: time(),
			augment: _augment_index
		}
		cap_logger_action_level(AUGMENT_CHOSEN, json_stringify(_data))
	}
}


