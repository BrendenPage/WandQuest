/// @description Insert description here
// You can write your code in this editor
randomize()
button_text = "Loading"
http_request_ = undefined
ready = false

if (global.logging_initialized == undefined) {
	global.logging_initialized = false
}
failed_streak = 0
instance_create_layer(0,0, "Instances", oMapGenerator)

if (!global.logging_initialized) {
	cap_logger_init(RELEASE)
	global.uuid = cap_logger_get_uuid()
	if (!global.uuid) {
		global.uuid = cap_logger_gen_uuid()
		cap_logger_set_uuid(global.uuid)
	}
	cap_logger_new_session(global.uuid)
}
