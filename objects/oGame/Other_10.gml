/// @description Set up room
// Add collision maps
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

show_debug_message("Room start with room: " + room_get_name(room))

// create motion planning grid
global.mp_grid = mp_grid_create(0,0,_w,_h, TS, TS)

// Loop through each tile and add a single solid if its a wall
var _map = layer_tilemap_get_id("tiles_wall")
// Determine at this point what doors need to exist in this room and insert them accordingly
if (global.map_gen.dependency_map[current_room_x, current_room_y] & WEST) {
	show_debug_message("Open west")
	open_west_door()
}
if (global.map_gen.dependency_map[current_room_x, current_room_y] & SOUTH) {
	show_debug_message("Open south")
	open_south_door()
}
if (global.map_gen.dependency_map[current_room_x, current_room_y] & EAST) {
	show_debug_message("Open east")
	open_east_door()
}
if (global.map_gen.dependency_map[current_room_x, current_room_y] & NORTH) {
	show_debug_message("Open north")
	open_north_door()
}
set_warp_points()
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



//add solid instances to grid
mp_grid_add_instances(global.mp_grid, oCollide, true);
//loop through grid positions again.  Get solid id and if a solid is to the right, absorb it.
for (var yy = 0; yy < _h; ++yy) {
    for (var xx = 0; xx < _w; ++xx) {
	    var _t1 = tilemap_get(_map, xx, yy);
		if _t1 >= 1 and _t1 <= 47 {
			//get solid id at this position(using a smaller tile size, as there is overlap)
			var _inst = collision_point(xx * TS, yy * TS, oCollide, 0, 1);
			//if no solid found, move to the next grid position
			if _inst == noone continue;
			
			//replace the solids to the right 
			with(_inst) {
				do {
					var _change = false;
					var _inst_next = instance_place(x + 1, y, oCollide);
					if _inst_next != noone {
						image_xscale++;
						instance_destroy(_inst_next);
						_change = true;
					}
				} until _change == false;
				
				//merge with any solids above that are the same shape
				var _inst_above = instance_place(x, y - 1, oCollide);
				if _inst_above != noone and _inst_above.bbox_left == bbox_left and _inst_above.bbox_right == bbox_right {
					y = _inst_above.y;
					image_yscale += _inst_above.image_yscale;
					instance_destroy(_inst_above);
				}
			}
		} else {
			//tile is empty, so should we add an enemy	
			//if random(1) <= 0.025 {
			//	instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", oSlime)
			//}
		}
	}
}

ds_map_add(seen_room_set, room, true)