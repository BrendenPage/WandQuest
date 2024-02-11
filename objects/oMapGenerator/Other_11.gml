show_debug_message("Map generator creation event user 1")
/// @description Begin Map Generation
arm_length[0] = irandom_range(length_min,length_max)
arm_length[1] = irandom_range(length_min,length_max)
arm_length[2] = irandom_range(length_min,length_max)
arm_length[3] = irandom_range(length_min,length_max)

// These determine where each arm is currently located, there will be
// one branch per cardinal direction
pos_arm_x[0] = map_size/2 + 1
pos_arm_y[0] = map_size/2

pos_arm_x[1] = map_size/2
pos_arm_y[1] = map_size/2 + 1

pos_arm_x[2] = map_size/2 - 1
pos_arm_y[2] = map_size/2

pos_arm_x[3] = map_size/2
pos_arm_y[3] = map_size/2 - 1
map = []
dependency_map = []
room_map = []

for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		map[_i, _j] = 0
		dependency_map[_i, _j] = 0
		room_map[_i, _j] = noone
	}
}
for (var _i = 0; _i < 4; _i++) {
	map[pos_arm_x[_i], pos_arm_y[_i]] = _i + 1
}
map[map_size/2, map_size/2] = 5
var _done = true
for (var _i = 0; _i < 4; _i++) {
	if ((--arm_length[_i]) != 0) {
		_done = false
	}
}

if (!_done) {
	event_user(4)
}