/// @description Insert Collision Objects

var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

// create motion planning grid
global.mp_grid = mp_grid_create(0,0,_w,_h, TS, TS)

// Loop through each tile and add a single solid if its a wall
var _map = layer_tilemap_get_id("tiles_wall")
// create each 1x1 solid
for (var _y = 0; _y < _h; _y++) {
	for (var _x = 0; _x < _w; _x++) {
		var _t1 = tilemap_get(_map, _x, _y)
		if (_t1 >= 1 and _t1 <= 47) {
			// The tile we are looking at is a wall
			instance_create_layer(_x * TS, _y * TS, "Collisions", oCollide)
		}
	}
}


