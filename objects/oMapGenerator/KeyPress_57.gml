/// @description Insert description here
// You can write your code in this editor
total_rooms = ROOM_COUNT
pos_arm_x[0] = map_size/2 + 1
pos_arm_y[0] = map_size/2

pos_arm_x[1] = map_size/2
pos_arm_y[1] = map_size/2 + 1

pos_arm_x[2] = map_size/2 - 1
pos_arm_y[2] = map_size/2

pos_arm_x[3] = map_size/2
pos_arm_y[3] = map_size/2 - 1
to_check_arm_index = 0
for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		map[_i, _j] = 0
	}
}

for (var _i = 0; _i < 4; _i++) {
	map[pos_arm_x[_i], pos_arm_y[_i]] = _i + 1
}

map[map_size/2, map_size/2] = 5

total_rooms -= 4
if (total_rooms > 0) {
	alarm[0] = refresh
}