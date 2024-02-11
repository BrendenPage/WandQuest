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
		event_user(1)
		exit
	}
	_special_placed = false
}


for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		if (_i = map_size/2 and _j = map_size/2) {
			dependency_map[_i, _j] |= NORTH|SOUTH|EAST|WEST
			room_map[_i, _j] = DStart
		} else if (map[_i, _j] != 0) {
			if (map[_i, _j] < 4) {
				room_map[_i, _j] = room_duplicate(room_list[irandom_range(0,array_length(room_list)-1)])
			} else {
				room_map[_i, _j] = room_duplicate(DSpecial)
			}
		}
	}
}