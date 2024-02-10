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
	
}

