/// @description Add Special Rooms and place rooms

var _special_placed = false
for (var _room = 1; _room < 5; _room++) {
	for (var _i = 0; _i < map_size; _i++) {
		for (var _j = 0; _j < map_size; _j++) {
			if (map[_i,_j] == _room) {
				if (!(dependency_map[_i,_j] & WEST)) {
					if (_i != 0) {
						if (map[_i-1,_j] == 0) {
							map[_i-1,_j] = _room + 4
							dependency_map[_i,_j] |= WEST
							dependency_map[_i-1,_j] |= EAST
							_special_placed = true
							break
						}
					}
				}
				if (!(dependency_map[_i,_j] & NORTH)) {
					if (_j != 0) {
						if (map[_i,_j-1] == 0) {
							map[_i,_j-1] = _room + 4
							dependency_map[_i,_j] |= NORTH
							dependency_map[_i,_j-1] |= SOUTH
							_special_placed = true
							break
						}
					}
				}
				if (!(dependency_map[_i,_j] & SOUTH)) {
					if (_j != map_size-1) {
						if (map[_i,_j+1] == 0) {
							map[_i,_j+1] = _room + 4
							dependency_map[_i,_j] |= SOUTH
							dependency_map[_i,_j+1] |= NORTH
							_special_placed = true
							break
						}
					}
				}
				if (!(dependency_map[_i,_j] & EAST)) {
					if (_i != map_size-1) {
						if (map[_i+1,_j] == 0) {
							map[_i+1,_j] = _room + 4
							dependency_map[_i,_j] |= EAST
							dependency_map[_i+1,_j] |= WEST
							_special_placed = true
							break
						}
					}
				}
			}
		}
		if (_special_placed) {
			break
		}
	}
	if (!_special_placed) {
		// No free spaces to place special!! Regenerate map :(
		show_debug_message("Could not place all special rooms, restart room generation")
		event_user(1)
		exit
	}
	_special_placed = false
}

// If we need rooms of different sizes add that logic here
for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		if (_i = map_size/2 and _j = map_size/2) {
			room_map[_i, _j] = DStart
			ds_map_add(room_sizes, room_map[_i, _j], [1080, 720])
		} else if (map[_i, _j] != 0) {
			if (map[_i, _j] <= 4) {
				if (ds_list_size(free_rooms) == 0) {
					var _new_room = room_duplicate(room_list[irandom_range(0,array_length(room_list)-1)])
					room_map[_i, _j] = _new_room
					ds_list_add(in_use_rooms, _new_room)
				} else {
					var _reused_index = irandom_range(0,ds_list_size(free_rooms)-1)
					var _reused_room = ds_list_find_value(free_rooms, _reused_index)
					room_map[_i, _j] = _reused_room
					ds_list_delete(free_rooms, _reused_index)
					ds_list_add(in_use_rooms, _reused_room)
				}
				ds_map_add(room_sizes, room_map[_i, _j], [1080, 720])
			} else {
				room_map[_i, _j] = room_duplicate(DSpecial)
				ds_map_add(room_sizes, room_map[_i, _j], [1080, 720])
			}
		}
	}
}

done = true