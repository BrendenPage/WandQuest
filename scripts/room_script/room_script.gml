#macro NORTH 1
#macro WEST 2
#macro SOUTH 4
#macro EAST 8

// Remove wall tile sprites of current room and replace them with an opening
// that should eventually have a warp inserted

function close_every_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	tilemap_set(_wall_map, WEST_WALL, 0, _h/2)
	tilemap_set(_wall_map, WEST_WALL, 0, _h/2-1)
	tilemap_set(_door_map, TILE_CLEAR, 0, _h/2)
	tilemap_set(_door_map, TILE_CLEAR, 0, _h/2-1)
	tilemap_set(_wall_map, EAST_WALL, _w-1, _h/2-1)
	tilemap_set(_wall_map, EAST_WALL, _w-1, _h/2)
	tilemap_set(_door_map, TILE_CLEAR, _w-1, _h/2-1)
	tilemap_set(_door_map, TILE_CLEAR, _w-1, _h/2)
	tilemap_set(_wall_map, NORTH_WALL, floor(_w/2)-1, 0)
	tilemap_set(_wall_map, NORTH_WALL, floor(_w/2), 0)
	tilemap_set(_door_map, TILE_CLEAR, floor(_w/2)-1, 0)
	tilemap_set(_door_map, TILE_CLEAR, floor(_w/2), 0)
	tilemap_set(_door_map, TILE_CLEAR, floor(_w/2)-1, _h-1)
	tilemap_set(_door_map, TILE_CLEAR, floor(_w/2), _h-1)
	tilemap_set(_wall_map, SOUTH_WALL, floor(_w/2), _h-1)
	tilemap_set(_wall_map, SOUTH_WALL, floor(_w/2)-1, _h-1)
}

function is_door_position(_x, _y) {
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	_x = floor(_x/TS)
	_y = floor(_y/TS)
	if (_x == 0 and (_y == _h/2 or _y == _h/2-1)) {
		return true
	}
	if (_x == _w-1 and (_y == _h/2 or _y == _h/2-1)) {
		return true
	}
	if (_y == 0 and (_x == floor(_w/2)) or _x == floor(_w/2)-1) {
		return true
	}
	if (_y == _h-1 and (_x == floor(_w/2)) or _x == floor(_w/2)-1) {
		return true
	}
	return false
}

function open_west_door() {
	if (DEBUG) {
		show_debug_message("Open West Door")
	}
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _h = ceil(room_height/TS)
	// Destroy previously placed walls
	var _wall = instance_position(0, (_h/2)*TS, oWall)
	if (_wall != noone) {
		if (DEBUG) {
			show_debug_message("Clearing west wall")
		}
		instance_destroy(_wall)
	}
	_wall = instance_position(0, (_h/2-1)*TS, oWall)
	if (_wall) {
		instance_destroy(_wall)
	}
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, 0, _h/2-1)
	tilemap_set(_door_map, DOOR_RIGHT + WEST_DOOR_OFFSET, 0, _h/2)
	tilemap_set(_door_map, DOOR_LEFT + WEST_DOOR_OFFSET, 0, _h/2-1)
}

function open_east_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	// Destroy previously placed walls
	var _wall = instance_position((_w-1)*TS, (_h/2)*TS, oWall)
	if (_wall != noone) {
		if (DEBUG) {
			show_debug_message("Clearing east wall")
		}
		instance_destroy(_wall)
	}
	_wall = instance_position((_w-1)*TS, (_h/2-1)*TS, oWall)
	if (_wall != noone) {
		instance_destroy(_wall)
	}
	tilemap_set(_door_map, DOOR_RIGHT + EAST_DOOR_OFFSET, _w-1, _h/2-1)
	tilemap_set(_door_map, DOOR_LEFT + EAST_DOOR_OFFSET, _w-1, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2)
	tilemap_set(_wall_map, TILE_CLEAR, _w-1, _h/2-1)
}

function open_north_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	// Destroy previously placed walls
	var _wall = instance_position((floor(_w/2)-1)*TS, 0, oWall)
	if (_wall != noone) {
		if (DEBUG) {
			show_debug_message("Clearing north wall")
		}
		instance_destroy(_wall)
	}
	_wall = instance_position((floor(_w/2))*TS, 0, oWall)
	if (_wall != noone) {
		instance_destroy(_wall)
	}
	tilemap_set(_wall_map, TILE_CLEAR, floor(_w/2), 0)
	tilemap_set(_wall_map, TILE_CLEAR, floor(_w/2)-1, 0)
	tilemap_set(_door_map, DOOR_LEFT, floor(_w/2)-1, 0)
	tilemap_set(_door_map, DOOR_RIGHT, floor(_w/2), 0)
}

function open_south_door() {
	_wall_map = layer_tilemap_get_id("tiles_wall")
	_door_map = layer_tilemap_get_id("tiles_door")
	var _w = ceil(room_width/TS)
	var _h = ceil(room_height/TS)
	// Destroy previously placed walls
	var _wall = instance_position((floor(_w/2)-1)*TS, (_h-1)*TS, oWall)
	if (_wall != noone) {
		if (DEBUG) {
			show_debug_message("Clearing south wall")
		}
		instance_destroy(_wall)
	}
	_wall = instance_position((floor(_w/2))*TS, (_h-1)*TS, oWall)
	if (_wall != noone) {
		instance_destroy(_wall)
	}
	tilemap_set(_door_map, DOOR_LEFT + SOUTH_DOOR_OFFSET, floor(_w/2)-1, _h-1)
	tilemap_set(_door_map, DOOR_RIGHT+ SOUTH_DOOR_OFFSET, floor(_w/2), _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, floor(_w/2), _h-1)
	tilemap_set(_wall_map, TILE_CLEAR, floor(_w/2)-1, _h-1)
}

// Check for enemies in current room instance, if none exist, insert correct
// warp points, check for wing completion

function set_warp_points() {
	while(instance_number(oWarp)) {
		instance_destroy(instance_find(oWarp, 0))
	}
	if (instance_number(oEnemyParent) == 0) {
		if (is_boss_room()) {
			var _floor_warp = instance_create_layer(room_width/2, room_height/2, "Instances", oFloorWarp)
			exit
		}
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
			// There is an opening to the south
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
				if (!is_door_locked(_closed_door)) {
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

function set_wing_warp() {
	var _warp_map = ds_map_find_value(global.map_gen.warp_map, room)
	if (DEBUG) {
		show_debug_message("Setting wing warp")
	}

	show_debug_message("Warp map len: " + string(array_length(_warp_map)))
	for (var _i = 0; _i < array_length(_warp_map); _i++) {
		show_debug_message("Placing warp")
		var _warp = instance_create_layer(_warp_map[_i,0], _warp_map[_i,1], "Instances", oWingWarp)
	}
}

function num_wings_cleared() {
	var _ret = 0
	for (var _i = 0; _i < array_length(global.game.wings_cleared); _i++) {
		if (global.game.wings_cleared[_i]) {
			_ret++
		}
	}
	return _ret
}

function is_tile_closed_door(_tile) {
	var _temp = _tile - (_tile + 1) % 2
	return _temp == DOOR_LEFT or _temp == WEST_DOOR_OFFSET + 1 or _temp == EAST_DOOR_OFFSET+ 1 or _temp == SOUTH_DOOR_OFFSET+ 1
}

function is_door_locked(_door) {
	var _door_map = layer_tilemap_get_id("tiles_door")
	var _t2 = tilemap_get(_door_map, _door.x/TS, _door.y/TS)
	_t2 = _t2 - 1 - (_t2+1) % 2
	// Check if east of start room
	if (global.game.current_room_x == 6 and global.game.current_room_y = 5 and (_t2 == WEST_DOOR_OFFSET) and !global.game.wings_cleared[0]) {
		return true
	}
	// Check if West of start room
	if (global.game.current_room_x == 4 and global.game.current_room_y = 5 and (_t2 == EAST_DOOR_OFFSET) and !global.game.wings_cleared[2]) {
		return true
	}
	// Check if North of start room
	if (global.game.current_room_y == 4 and global.game.current_room_x = 5 and (_t2 == SOUTH_DOOR_OFFSET) and !global.game.wings_cleared[3]) {
		return true
	}
	// Check if South of start room
	if (global.game.current_room_y == 6 and global.game.current_room_x = 5 and (_t2 == 0) and !global.game.wings_cleared[1]) {
		return true
	}
}

// ESWN 0-3, start room is -1
function get_room_wing_type(_x, _y) {
	if (_x == global.map_gen.map_size/2 and _y == global.map_gen.map_size/2) {
		return -1
	}
	return (global.map_gen.map[_x,_y] -  1) % 4
}

function is_boss_room() {
	with (global.map_gen) {
		for (var _i = 0; _i < array_length(boss_rooms); _i++) {
			if (room == boss_rooms[_i]) {
				return true
			}
		}
		return false
	}
}

function is_wing_cleared() {
	if (is_boss_room()) {
		return false
	}
	return global.game.wings_cleared[get_room_wing_type(global.game.current_room_x, global.game.current_room_y)]
}

// Check if the wing has been cleared and set appropriate values if so
function clear_wing(_wing) {
	if (!is_normal_room(global.game.current_room_x, global.game.current_room_y) or global.game.wings_cleared[_wing]) {
		return
	}
	var _map = global.map_gen.map
	var _seen= global.game.visible_minimap
	for (var _i = 0; _i < global.map_gen.map_size; _i++) {
		for (var _j = 0; _j < global.map_gen.map_size; _j++) {
			if (global.map_gen.map[_i, _j]-1 == _wing and !_seen[_i, _j]) {
				// We have not explored the entire wing
				exit
			}
		}
	}
	if (DEBUG) {
		show_debug_message("Cleared wing")
	}
	set_wing_warp()
	global.game.wings_cleared[_wing] = true
	if (global.logging) {
		var _data = {
			curr_time: time(),
			wings_cleared: num_wings_cleared()
		}
		cap_logger_action_no_level(WING_CLEARED, json_stringify(_data))
	}
}

function is_normal_room(_x, _y) {
	return global.map_gen.map[_x, _y] <= 4
}

function is_current_room_normal() {
	return global.map_gen.map[global.game.current_room_x, global.game.current_room_y] <= 4
}

function set_dependencies_for_special_placement(_room, _x, _y) {
	with (global.map_gen) {
		// Check left
		if (_x > 0) {
			if (map[_x - 1, _y] == _room) {
				dependency_map[_x-1, _y] |= EAST
				dependency_map[_x, _y] |= WEST
			}
		}
		if (_x < map_size - 1) {
			if (map[_x + 1, _y] == _room) {
				dependency_map[_x, _y] |= EAST
				dependency_map[_x + 1, _y] |= WEST
			}
		}
		if (_y < map_size - 1) {
			if (map[_x, _y+1] == _room) {
				dependency_map[_x, _y] |= SOUTH
				dependency_map[_x, _y+ 1] |= NORTH
			}
		}
		if (_y > 0) {
			if (map[_x, _y-1] == _room) {
				dependency_map[_x, _y - 1] |= SOUTH
				dependency_map[_x, _y] |= NORTH
			}
		}
	}
}

function enemy_spawn_rate() {
	wing_spawn_rate = [0.8, 1, 1.5, 2]
	with (global.game) {
		if (!is_normal_room(current_room_x, current_room_y)) {
			return 0
		}
		var _modifier = 1
		if (floor_ != 1) {
			_modifier = 1 + floor_*0.3
		} else if (floor_ == 1 and num_wings_cleared() == 3) {
			return 1.5
		}
		return wing_spawn_rate[num_wings_cleared()]*_modifier + global.enemies_killed_without_taking_damage * 0.025
	}
}

// Return an enemy chosen from either the ranged or melee enemy lists
// based on passed variable
function choose_enemy(_ranged) {
	if (_ranged) {
		if (global.game.floor_ == 1) {
			show_debug_message("Wings cleared: " + string(num_wings_cleared()))
		}
	}
	
	ranged_enemies = [oGun, oGoblinArcher, oRedGun, oWizard]
	melee_enemies = [oSlime, oGoblinWarrior, oSkeleton, oSpider, oOoze]
	var _enemy_list = []
	var _spawn_rates = []
	if (_ranged) {
		_enemy_list = ranged_enemies
	} else {
		_enemy_list = melee_enemies
	}
	
	switch(global.game.floor_) {
		case 1:
			if (_ranged) {
				// Ranged floor 1
				if (num_wings_cleared() <= 1) {
					_spawn_rates = [1]
				} else {
					_spawn_rates = [0.8, 0.2]
				}
			} else {
				// Melee floor 1
				switch (num_wings_cleared()) {
					case 0:
						_spawn_rates = [0.95, 0.05]
						break
					case 1:
					case 2:
						_spawn_rates = [0.8, 0.2]
						break
					default:
						_spawn_rates = [0.5, 0.5]
				}
			}
			break
		case 2:
			if (_ranged) {
				if (num_wings_cleared() == 0) {
					_spawn_rates = [0.8, 0.1, 0.1]
				} else {
					_spawn_rates = [0.5, 0.3, 0.2]
				}
			} else {
				switch (num_wings_cleared()) {
					case 0:
						_spawn_rates = [0.4, 0.3, 0.2, 0.1]
						break
					case 1:
					case 2:
						_spawn_rates = [0.4, 0.3, 0.2, 0.1]
						break
					case 3:
						_spawn_rates = [0.1, 0.3, 0.5, 0.05, 0.05]
				}
			}
			break
		case 3:
			if (_ranged) {
				switch (num_wings_cleared()) {
					case 0:
						_spawn_rates = [0.3, 0.4, 0.25, 0.05]
						break
					case 1:
						_spawn_rates = [0.3, 0.4, 0.2, 0.1]
					default:
						_spawn_rates = [0.3, 0.4, 0.1, 0.2]
				}
			} else {
				switch (num_wings_cleared()) {
					case 0:
						_spawn_rates = [0.1, 0.4, 0.2, 0.2, 0.1]
					case 1:
					case 2:
						_spawn_rates = [0.1, 0.25, 0.3, 0.2, 0.15]
					case 3:
						_spawn_rates = [0, 0.1, 0.4, 0.3, 0.2]
				}
			}
			break
		default:
			if (_ranged) {
				_spawn_rates = [0.3, 0.4, 0.1, 0.2]
			} else {
				_spawn_rates = [0.1, 0.2, 0.3, 0.2, 0.2]
			}
	}
		
	var _seed = random(1)
	var _index = 0
	for (var _i = 0; _i < array_length(_spawn_rates); _i++) {
		if (_seed < _spawn_rates[_i]) {
			_index = _i
			break
		} else {
			_seed -= _spawn_rates[_i]
		}
	}
	return _enemy_list[_index]
}

function clear_instances() {
	while(instance_number(oEnemyParent) > 0) {
		instance_destroy(instance_find(oEnemyParent, 0))
	}
	while(instance_number(oProjectileParent) > 0) {
		instance_destroy(instance_find(oProjectileParent, 0))
	}
	while(instance_number(oSpecialParent) > 0) {
		instance_destroy(instance_find(oSpecialParent, 0))
	}
	while(instance_number(oPileOfBones) >0) {
		instance_destroy(instance_find(oPileOfBones, 0))
	}
	for(var _i = 0; _i < array_length(global.paths_list); _i++) {
		if (path_exists(global.paths_list[_i])) {
			path_delete(global.paths_list[_i])
		}
	}
	global.paths_list = []
}
