/// @description Insert description here
// You can write your code in this editor
if (global.map_gen.done) {
	if (instance_number(oGame) == 0) {
		global.game = instance_create_layer(0,0,"Instances", oGame)
		if (DEBUG) {
			show_debug_message("Creating game object in button play")
		}
	}
}

if (instance_number(oGame) == 1 and global.logging_initialized) {
	with(global.game) {
		event_user(1)
	}
	button_text = "Play"
	ready = true
}

if (!global.logging_initialized) {
	var _cb = cap_logger_check_callback()
	if (_cb != -1) {
		if (_cb == 0) {
			// Failed to start session, try again
			cap_logger_new_session(global.uuid)
			failed_streak++
		} else {
			global.logging_initialized = true
			global.logging = true
		}
		if (failed_streak >= 5) {
			if (DEBUG) {
				show_debug_message("Failed to connect, http request rejected from server")
			}
			global.logging_initialized = true
			global.logging = false
		}
	} else {
		if (DEBUG) {
			show_debug_message("no response streak: " + string(no_response_streak))	
		}
		if (no_response_streak++ > 1000) {
			global.logging_initialized = true
			global.logging = false
			if (DEBUG) {
				show_debug_message("Failed to connect, no response from server")
			}
		}
	}
}

