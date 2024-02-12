if (room==Pause){
	exit
}

if (!game_setup and room==START_ROOM) {
	event_user(2)
}

if (!ds_map_find_value(global.seen_room_set, room)) {
	event_user(0)
}

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (!ds_map_find_value(this_run_seen_room_set,room)) {
	if (_current_room_type >= 1 and _current_room_type <= 4) {
		show_debug_message("Regular room")
	} else if (_current_room_type >= 5 and _current_room_type <= 8) {
		event_user(3)
	}
	ds_map_add(this_run_seen_room_set, room, true)
}
event_user(1)
