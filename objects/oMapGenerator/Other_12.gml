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
					if (map[_i-1, _j] == _room or (_i-1 == map_size/2 and _j == map_size/2)) {
						_dependencies |= WEST
					}
				}
				if (_j != 0) {
					if (map[_i, _j-1] == _room or (_i == map_size/2 and _j-1 == map_size/2)) {
						_dependencies |= NORTH
					}
				}
				if (_i != map_size-1) {
					if (map[_i+1, _j] == _room or (_i+1 == map_size/2 and _j == map_size/2)) {
						_dependencies |= EAST
					}
				}
				if (_j != map_size-1) {
					if (map[_i, _j+1] == _room or (_i == map_size/2 and _j+1 == map_size/2)) {
						_dependencies |= SOUTH
					}
				}
				dependency_map[_i, _j] = _dependencies
			}
		}
	}
}

event_user(3)


