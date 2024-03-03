/// @description Set up room
// Add collision maps

if (DEBUG) {
	show_debug_message("Room start with room: " + room_get_name(room))
}

if (not variable_global_exists("grid_map")) {
	global.grid_map = ds_map_create()
}

// Destroy warps
while (instance_number(oWarp) != 0) {
	instance_destroy(instance_find(oWarp, 0))
}

while (instance_number(oWingWarp) != 0) {
	instance_destroy(instance_find(oWingWarp, 0))
}

while (instance_number(oBossWarp) != 0) {
	instance_destroy(instance_find(oBossWarp, 0))
}

// create motion planning grid
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
if (!ds_map_find_value(global.grid_map, room)) {
    ds_map_add(global.grid_map, room, mp_grid_create(0,0,_w,_h, TS, TS))
}

var _mp_grid = ds_map_find_value(global.grid_map, room)
mp_grid_clear_all(_mp_grid)

var _map = layer_tilemap_get_id("tiles_wall")
var _door_map = layer_tilemap_get_id("tiles_door")
if (global.tutorial_seen or room == DStart) {
	close_every_door()
	// Determine at this point what doors need to exist in this room and insert them accordingly
	if (!is_boss_room()) {
		if (global.map_gen.dependency_map[current_room_x, current_room_y] & WEST) {
			//show_debug_message("Open west")
			open_west_door()
		}
		if (global.map_gen.dependency_map[current_room_x, current_room_y] & SOUTH) {
			//show_debug_message("Open south")
			open_south_door()
		}
		if (global.map_gen.dependency_map[current_room_x, current_room_y] & EAST) {
			//show_debug_message("Open east")
			open_east_door()
		}
		if (global.map_gen.dependency_map[current_room_x, current_room_y] & NORTH) {
			//show_debug_message("Open north")
			open_north_door()
		}
	}
}

// Loop through each tile and add a single solid if its a wall
// create each 1x1 solid
for (var _y = 0; _y < _h; _y++) {
	for (var _x = 0; _x < _w; _x++) {
		var _t1 = tilemap_get(_map, _x, _y)
		if (_t1 >= 1 and _t1 <= 47) {
			// The tile we are looking at is a wall
			if (!position_meeting(_x * TS, _y * TS, oWall)) {
				// Only place a wall if there is not one already
				instance_create_layer(_x * TS, _y * TS, "Collisions", oWall)
			}
		}
	}
}

//add solid instances to grid
mp_grid_add_instances(_mp_grid, oWall, true);

//loop through grid positions again.  Get solid id and if a solid is to the right, absorb it.
for (var yy = 0; yy < _h; ++yy) {
    for (var xx = 0; xx < _w; ++xx) {
		if (is_door_position(xx*TS, yy*TS)) { continue }
	    var _t1 = tilemap_get(_map, xx, yy);
		if _t1 >= 1 and _t1 <= 47 {
			//get solid id at this position(using a smaller tile size, as there is overlap)
			var _inst = collision_point(xx * TS, yy * TS, oWall, 0, 1);
			//if no solid found, move to the next grid position
			if _inst == noone continue;
			
			//replace the solids to the right 
			with(_inst) {
				do {
					var _change = false;
					var _inst_next = instance_place(x + 1, y, oWall);
					if _inst_next != noone and !is_door_position((xx+1)*TS, y) {
						image_xscale++;
						xx++
						instance_destroy(_inst_next);
						_change = true;
						image_blend = make_color_hsv(random(255),255,155)
					}
				} until _change == false;

				//merge with any solids above that are the same shape
				var _inst_above = instance_place(x, y - 1, oWall);
				if _inst_above != noone and _inst_above.bbox_left == bbox_left and _inst_above.bbox_right == bbox_right and !is_door_position(x, y-1) {
					y = _inst_above.y;
					image_yscale += _inst_above.image_yscale;
					instance_destroy(_inst_above);
					image_blend = make_color_hsv(random(255),255,155)
				}
			}
		}
	}
}

if (!global.tutorial_seen) { exit }
// Add closed doors, doors will be opened if enemies are not populated
for (var _y = 0; _y < _h; _y++) {
	for (var _x = 0; _x < _w; _x++) {
		var _t2 = tilemap_get(_door_map, _x, _y)
		if (is_tile_closed_door(_t2)) {
			lock_door(instance_create_layer(_x * TS, _y * TS, "Instances", oClosedDoor))
		}
	}
}
