/// @description Fill out dependencies map

for (var _room = 1; _room < 5; _room++) {
	for (var _i = 0; _i < map_size; _i++) {
		for (var _j = 0; _j < map_size; _j++) {
			if (_i == map_size/2 and _j == map_size/2) {
				dependency_map[_i, _j] = NORTH|SOUTH|EAST|WEST
				continue
			}
			if (map[_i, _j] == _room) {
				// Find all neighboring connected rooms and connect them
				var _dependencies = 0
				if (_i != 0) {
					if (map[_i-1, _j] == _room) {
						_dependencies |= WEST
					}
				}
				if (_j != 0) {
					if (map[_i, _j-1] == _room) {
						_dependencies |= NORTH
					}
				}
				if (_i != map_size-1) {
					if (map[_i+1, _j] == _room) {
						_dependencies |= EAST
					}
				}
				if (_j != map_size-1) {
					if (map[_i, _j+1] == _room) {
						_dependencies |= SOUTH
					}
				}
				//show_debug_message("i: " + string(_i) + ", j: " + string(_j) + ", deps: " + string(_dependencies))
				dependency_map[_i, _j] = _dependencies
			}
		}
	}
}

event_user(3)


