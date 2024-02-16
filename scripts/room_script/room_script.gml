#macro NORTH 1
#macro WEST 2
#macro SOUTH 4
#macro EAST 8

// Remove wall tile sprites of current room and replace them with an opening
// that should eventually have a warp inserted

function open_west_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _h = ceil(room_height/TS)
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2-1)
	tilemap_set(_door_map, DOOR_RIGHT + WEST_DOOR_OFFSET, 0, _h/2)
	tilemap_set(_door_map, DOOR_LEFT + WEST_DOOR_OFFSET, 0, _h/2-1)
}

function open_east_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	tilemap_set(_door_map, DOOR_RIGHT + EAST_DOOR_OFFSET, _w-1, _h/2-1)
	tilemap_set(_door_map, DOOR_LEFT + EAST_DOOR_OFFSET, _w-1, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2-1)
}

function open_north_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2, 0)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2-1, 0)
	tilemap_set(_door_map, DOOR_LEFT, _w/2-1, 0)
	tilemap_set(_door_map, DOOR_RIGHT, _w/2, 0)
}

function open_south_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_shadow_map = layer_tilemap_get_id("tile_floor_shadow")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	tilemap_set(_door_map, DOOR_LEFT + SOUTH_DOOR_OFFSET, _w/2-1, _h-1)
	tilemap_set(_door_map, DOOR_RIGHT+ SOUTH_DOOR_OFFSET, _w/2, _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2, _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, _w/2-1, _h-1)
}

// Check for enemies in current room instance, if none exist, insert correct
// warp points

function set_warp_points() {
	while(instance_number(oWarp)) {
		instance_destroy(instance_find(oWarp, 0))
	}
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
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x, global.game.current_room_y-1]
			_warp.target_x = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[0]/2
			_warp.target_y = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[1] - TS*2
			_warp.down = -1
		}
		if (global.map_gen.dependency_map[global.game.current_room_x, global.game.current_room_y] & SOUTH) {
			// There is an opening to the west
			var _warp = instance_create_layer(room_width/2, room_height, "Instances", oWarp)
			_warp.target_room = global.map_gen.room_map[global.game.current_room_x, global.game.current_room_y+1]
			_warp.target_x = ds_map_find_value(global.map_gen.room_sizes, _warp.target_room)[0]/2
			_warp.target_y = TS*2
			_warp.down = 1
		}
		// Open doors
		var _found_closed_doors = []
		var _doors_found = 0
		var _found_all_doors = false

		while (true) {
			_closed_door = instance_find(oClosedDoor, _doors_found)
			if (_closed_door) {
				if (!_closed_door.locked) {
					array_push(_found_closed_doors, _closed_door)
				}
				_doors_found++
			} else {
				break
			}
		}

		while (array_length(_found_closed_doors)) {
			_closed_door = array_pop(_found_closed_doors)
			var _x = _closed_door.x/TS
			var _y = _closed_door.y/TS
			// Open the door tiles
			var _map = layer_tilemap_get_id("tiles_door")
			var _t1 = tilemap_get(_map, _x, _y)
			if (is_tile_closed_door(_t1)) {
				// The tile we are looking at is a closed door
				tilemap_set(_map, _t1 + OPEN_DOOR_OFFSET, _x, _y)
			}
			instance_destroy(_closed_door)
		}
	}
}

function is_tile_closed_door(_tile) {
	var _temp = _tile - (_tile + 1) % 2
	return _temp == DOOR_LEFT or _temp == WEST_DOOR_OFFSET + 1 or _temp == EAST_DOOR_OFFSET+ 1 or _temp == SOUTH_DOOR_OFFSET+ 1
}

function enemy_spawn_rate(_i, _j) {
	if (global.map_gen.map[_i, _j] > 4) {
		return 0
	}
	return BASE_SPAWN_RATE*global.game.wing_spawn_rate_modifier[global.map_gen.map[_i,_j]-1]
}

function choose_enemy() {
	with (global.game) {
		var _seed = random(1)
		var _index = 0
		for (var _i = 0; _i < array_length(enemy_spawn_rates); _i++) {
			if (_seed < enemy_spawn_rates[_i]) {
				_index = _i
			} else {
				_seed -= enemy_spawn_rates[_i]
			}
		}
		return enemy_list[_index]
	}
}