#macro NORTH 1
#macro WEST 2
#macro SOUTH 4
#macro EAST 8

// Remove wall tile sprites of current room and replace them with an opening
// that should eventually have a warp inserted

function open_west_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	var _h = ceil(room_height/TS)
	tilemap_set(_wall_map, WEST_WALL_TILE_TOP, 0, _h/2-2)
	tilemap_set(_wall_map, WEST_WALL_TILE_BOTTOM, 0, _h/2+1)
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2-1)
	tilemap_set(_shadow_map, SHADOW_CLEAR, 1, _h/2)
	tilemap_set(_shadow_map, SHADOW_CLEAR, 1, _h/2-1)
	tilemap_set(_shadow_map, SHADOW_BOTTOM, 0, _h/2)
	tilemap_set(_shadow_map, SHADOW_TOP, 0, _h/2-1)
}

function open_east_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	tilemap_set(_wall_map, EAST_WALL_TILE_TOP, _w-1, _h/2-2)
	tilemap_set(_wall_map, EAST_WALL_TILE_BOTTOM, _w-1, _h/2+1)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2-1)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w-2, _h/2)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w-2, _h/2-1)
	tilemap_set(_shadow_map, SHADOW_BOTTOM, _w-1, _h/2)
	tilemap_set(_shadow_map, SHADOW_TOP, _w-1, _h/2-1)
}

function open_north_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	var _w = ceil(room_width/TS)
	tilemap_set(_wall_map, NORTH_WALL_TILE_LEFT, _w/2-2, 0)
	tilemap_set(_wall_map, NORTH_WALL_TILE_RIGHT, _w/2+1, 0)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2, 0)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2-1, 0)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w/2, 1)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w/2-1, 1)
	tilemap_set(_shadow_map, SHADOW_RIGHT, _w/2, 0)
	tilemap_set(_shadow_map, SHADOW_LEFT, _w/2-1, 0)
}

function open_south_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	tilemap_set(_wall_map, SOUTH_WALL_TILE_LEFT, _w/2-2, _h-1)
	tilemap_set(_wall_map, SOUTH_WALL_TILE_RIGHT, _w/2+1, _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2, _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2-1, _h-1)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w/2, _h-2)
	tilemap_set(_shadow_map, SHADOW_CLEAR, _w/2-1, _h-2)
	tilemap_set(_shadow_map, SHADOW_RIGHT, _w/2, _h-1)
	tilemap_set(_shadow_map, SHADOW_LEFT, _w/2-1, _h-1)
}

// Check for enemies in current room instance, if none exist, insert correct
// warp points

function set_warp_points() {
	if (instance_number(oEnemyParent) == 0) {
		// All enemies have been defeated
		// Populate warp points
		if (global.map_gen.dependency_map[global.game.current_room_x, global.game.current_room_y] & WEST) {
			// There is an opening to the west
			var _warp = instance_create_layer(0, room_height/2, "Instances", oWarp)
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x-1, global.game.current_room_y]
			_warp.target_x = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[0] - TS*2
			_warp.target_y = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[1]/2
			_warp.right = -1
		}
		if (global.map_gen.dependency_map[global.game.current_room_x, global.game.current_room_y] & EAST) {
			// There is an opening to the east
			var _warp = instance_create_layer(room_width, room_height/2, "Instances", oWarp)
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x+1, global.game.current_room_y]
			_warp.target_x = TS*2
			_warp.target_y = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[1]/2
			_warp.right = 1
		}
		if (global.map_gen.dependency_map[global.game.current_room_x, global.game.current_room_y] & NORTH) {
			// There is an opening to the north
			var _warp = instance_create_layer(room_width/2, 0, "Instances", oWarp)
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x, global.game.current_room_y+1]
			_warp.target_x = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[0]/2
			_warp.target_y = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[1] - TS*2
			_warp.down = -1
		}
		if (global.map_gen.dependency_map[global.game.current_room_x, global.game.current_room_y] & SOUTH) {
			// There is an opening to the west
			var _warp = instance_create_layer(room_width/2, room_height, "Instances", oWarp)
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x, global.game.current_room_y-1]
			_warp.target_x = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[0]/2
			_warp.target_y = TS*2
			_warp.down = 1
		}
	}
}

