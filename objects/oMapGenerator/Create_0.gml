/// @description Insert description here
// You can write your code in this editor
randomize()
#macro ROOM_COUNT 40

global.map_gen = self
room_list = [D1, D2, D3, D4, D5]
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
// Map that holds info about adjacent rooms
dependency_map = []
// Holds all duplicated rooms so we can have a minimal number for room creation
free_rooms = ds_list_create()
in_use_rooms = ds_list_create()
// Map that holds room metadata
room_sizes = ds_map_create()
// Map that holds the actual rooms
room_map[map_size - 1, map_size - 1] = Menu
// Minimap?
sprite_map = ds_grid_create(map_size, map_size)
length_max = 4
length_min = length_max/1.5
done = false
// Begin map generation
event_user(1)


map_sprites = [sUiMapNothing, sUiMapWest, sUiMapNorth, sUiMapEast, sUiMapSouth, sUiMapHome]
