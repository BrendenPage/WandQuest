if (room==Pause){
	exit
}

if (!game_setup and room==START_ROOM) {
	show_debug_message("Called!")
	event_user(2)
}

if (!ds_map_find_value(seen_room_set, room)) {
	event_user(0)
}
event_user(1)
