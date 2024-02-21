/// @description Insert description here
// You can write your code in this editor
if (global.map_gen.done) {
	if (instance_number(oGame) == 0) {
		global.game = instance_create_layer(0,0,"Instances", oGame)
	}
}

if (instance_number(oGame) == 1 and global.logging_initialized) {
	button_text = "Play"
	ready = true
}

if (!global.logging_initialized) {
	var _cb = cap_logger_check_callback()
	if (_cb != -1) {
		show_message(_cb)
		if (_cb == 0) {
			// Failed to start session, try again
			cap_logger_new_session(global.uuid)
			failed_streak++
		} else {
			global.logging_initialized = true
			global.logging = true
		}
		if (failed_streak >= 5) {
			global.logging_initialized = true
			global.logging = false
		}
	}
}

