if (room==Pause){
	setup_deck_menu_objects()
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
		// insert enemies at random
		show_debug_message("SETTING UP THIS BITCH")
		event_user(4)
	} else if (_current_room_type >= 5 and _current_room_type <= 8) {
		event_user(3)
	}
	ds_map_add(this_run_seen_room_set, room, true)
}


set_warp_points()
update_bounded_minimap()
clear_wing(get_room_wing_type(current_room_x, current_room_y))

event_user(1)
