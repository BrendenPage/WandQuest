/// @description Insert description here
// You can write your code in this editor
randomize()
button_text = "Loading"
http_request_ = undefined
ready = false
draw_set_font(fStandard)



if (!variable_global_exists("tutorial_seen")) {
	global.tutorial_seen = false
}

if (!variable_global_exists("logging")) {
	global.logging = false
}

if (!variable_global_exists("logging_initialized")) {
	global.logging_initialized = false
	/*if (os_device == os_ios or os_device == os_android) {
		show_message("This game is best experienced on a computer")
		global.logging_initialized = true
		global.logging = false
	}*/
}

failed_streak = 0
no_response_streak = 0
if (instance_number(oMapGenerator) == 0) {
	instance_create_layer(0,0, "Instances", oMapGenerator)
} else {
	with (global.map_gen) {
		event_user(1)
	}
}

if (!global.logging_initialized) {
	cap_logger_init(RELEASE)
	global.uuid = cap_logger_get_uuid()
	if (global.uuid == 0) {
		global.uuid = cap_logger_gen_uuid()
		cap_logger_set_uuid(global.uuid)
	}
	cap_logger_new_session(global.uuid)
	
	var _hash = "00" + string_digits(sha1_string_utf8(global.uuid))
	var _last_digs = int64(string_char_at(_hash,string_length(_hash)-1) + string_char_at(_hash,string_length(_hash)))
	global.ab_test_category = _last_digs % 4
}

global.died = false