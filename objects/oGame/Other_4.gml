if (room==Pause){
	setup_deck_menu_objects()
	exit
}

if (room == Death or room == Menu) {
	exit
}

if (!game_setup and room==START_ROOM) {
	event_user(2)
} else if (room == START_ROOM) {
	if (num_wings_cleared() == 4) {
		instance_create_layer(432, 252, "Instances", oBossWarp)
	}
}

if (!ds_map_find_value(global.seen_room_set, room)) {
	event_user(0)
}

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (!ds_map_find_value(this_run_seen_room_set,room)) {
	if (global.logging) {
		var _data = {
			curr_time: time(),
			special_room: !is_current_room_normal()
		}
		cap_logger_level_end(string(ds_map_size(this_run_seen_room_set)), json_stringify(_data))
		cap_logger_level_start(string(ds_map_size(this_run_seen_room_set)+ 1), json_stringify(_data))
	}
	if (is_current_room_normal()) {
		// insert enemies at random
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
