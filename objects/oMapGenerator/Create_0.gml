/// @description Insert description here
// You can write your code in this editor
randomize()
#macro ROOM_COUNT 40
total_rooms = ROOM_COUNT
map_size = 10

length_max = 5
length_min = length_max/1.5

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

// which arm will we try to grow next
to_check_arm_index = 0

map = ds_grid_create(map_size, map_size)
for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		map[_i, _j] = 0
	}
}

for (var _i = 0; _i < 4; _i++) {
	map[pos_arm_x[_i], pos_arm_y[_i]] = _i + 1
}
total_rooms -= 4
map[map_size/2, map_size/2] = 5

refresh = 1
if (total_rooms > 0) {
	alarm[0] = refresh
}

map_sprites = [sUiMapNothing, sUiMapWest, sUiMapNorth, sUiMapEast, sUiMapSouth, sUiMapHome]