/// @description Start Next Floor
/// @description Start the game
// You can write your code in this editor


current_room_x = global.map_gen.map_size/2
current_room_y = global.map_gen.map_size/2

ds_map_clear(this_run_seen_room_set)
// Reset the map
with (global.map_gen) {
	event_user(1)
}

player.x = ROOM_START_X
player.y = ROOM_START_Y

for (var _i = 0; _i < global.map_gen.map_size; _i++) {
	for (var _j = 0; _j < global.map_gen.map_size; _j++) {
		if (_i == global.map_gen.map_size/2 and _j == global.map_gen.map_size/2) {
			visible_minimap[_i, _j] = NORTH | EAST | SOUTH | WEST
		} else {
			visible_minimap[_i, _j] = 0
		}
	}
}

visible_width = 3
visible_height = 3
minimap_seed_x = global.map_gen.map_size/2-1
minimap_seed_y = global.map_gen.map_size/2-1

ds_list_clear(special_types)
ds_list_add(special_types,0)
ds_list_add(special_types,1)
ds_list_add(special_types,irandom(1))
ds_list_add(special_types,irandom(1))
ds_list_shuffle(special_types)

locked_doors = []
// ESWN
wings_cleared = [false, false, false, false]
