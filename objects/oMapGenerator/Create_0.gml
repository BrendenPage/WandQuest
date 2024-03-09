/// @description Insert description here
// You can write your code in this editor
//randomize()
#macro ROOM_COUNT 40
show_debug_message("Create map gen object")
global.map_gen = self
//room_list = [D1]
room_list = [D1, D2, D3, D4, D5]
warp_locations = [[[470,360]], [[144, 288], [756, 288]], [[324, 324], [648,324]], [[504, 144], [504,396]], [[504, 324]]]
boss_rooms= [DBoss1]
total_rooms = ROOM_COUNT
map_size = 10
// Weight placed on preferentially generating rooms towards
// the cardinal direction of the corresponding wing
forward_weight = 4
// which arm will we try to grow next
to_check_arm_index = 0
// Frame rate of map generation
refresh = 1
done = false
// Game map
map = []
//
warp_map = ds_map_create()

// Map that holds info about adjacent rooms
dependency_map = []
// Holds all duplicated rooms so we can have a minimal number for room creation
free_rooms = ds_list_create()
in_use_rooms = ds_list_create()
// Map that holds room metadata
room_sizes = ds_map_create()
// Map that holds the actual rooms
for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		room_map[_i, _j] = 0
	}
}

var _max = 1

if (instance_number(oGame)) {
	if (global.game.floor_ > 1) {
		_max = 4
	}
}

length_max = _max
length_min = max(1, floor(length_max/1.5))
done = false
// Begin map generation
event_user(1)
