/// @description Insert description here
// You can write your code in this editor
randomize()
#macro ROOM_COUNT 40
total_rooms = ROOM_COUNT
map_size = 10
// Weight placed on preferentially generating rooms towards
// the cardinal direction of the corresponding wing
forward_weight = 4
// which arm will we try to grow next
to_check_arm_index = 0
// Frame rate of map generation
refresh = 1
// Game map
map = ds_grid_create(map_size, map_size)
sprite_map = ds_grid_create(map_size, map_size)
length_max = 4
length_min = length_max/1.5

// Begin map generation
event_user(1)

map_sprites = [sUiMapNothing, sUiMapWest, sUiMapNorth, sUiMapEast, sUiMapSouth, sUiMapHome]