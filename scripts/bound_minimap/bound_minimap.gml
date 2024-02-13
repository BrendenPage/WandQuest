function draw_bounded_minimap(){
	var _minimap_x = display_get_gui_width() - MINIMAP_OFFSET
	var _minimap_y = MINIMAP_OFFSET
	var _middle = global.map_gen.map_size/2
	with(global.game) {
		var _num_elements = max(visible_width, visible_height)
		var _element_size = MINIMAP_SIZE/_num_elements
		var _element_scale= _element_size/sprite_get_width(sMinimapHome)
		// draw_sprite_ext(sMapBackground, 0, _minimap_x - MINIMAP_SIZE, _minimap_y, MINIMAP_SIZE, MINIMAP_SIZE, 0, c_white, 0.9)
		for (var _i = minimap_seed_x; _i < minimap_seed_x + visible_width; _i++) {
			for (var _j = minimap_seed_y; _j < minimap_seed_y + visible_height; _j++) {
				if (visible_width > visible_height) {
					var _j_sprite = _j - minimap_seed_y + (visible_width - visible_height)/2
					var _i_sprite = minimap_seed_x + visible_width - _i
				} else {
					var _j_sprite = (_j - minimap_seed_y)
					var _i_sprite = minimap_seed_x + visible_width - _i - (visible_width - visible_height)/2
				}
				_x = _minimap_x - (_i_sprite*_element_size)
				_y = _minimap_y + (_j_sprite*_element_size)
				
				if (visible_minimap[_i, _j]) {
					// Draw correct sprite
					if (_i == _middle and _j == _middle) {
						draw_sprite_ext(sMinimapHome, 0, _x, _y, _element_scale, _element_scale, 0, c_white, 1)
					} else if (global.map_gen.map[_i, _j] > 4) {
						draw_sprite_ext(sMinimapSpecial, 0, _x, _y, _element_scale, _element_scale, 0, c_white, 1)
					} else {
						draw_sprite_ext(sMinimapNormal, 0, _x, _y, _element_scale, _element_scale, 0, c_white, 1)
					}
					draw_openings_minimap(_x, _y, _i, _j, _element_scale)
				} else {
					if (global.map_gen.map[_i, _j] and adjacent_to_visible_in_minimap(_i, _j, global.map_gen.map[_i, _j])) {
						if (global.map_gen.map[_i, _j] > 4) {
							draw_sprite_ext(sMinimapUnknownSpecial, 0, _x, _y, _element_scale, _element_scale, 0, c_white, 1)
						} else {
							draw_sprite_ext(sMinimapUnknownNormal, 0, _x, _y, _element_scale, _element_scale, 0, c_white, 1)
						}
					}
				}
			}
		}
	}
}

function draw_openings_minimap(_x, _y, _i, _j, _scale) {
	_dep = global.map_gen.dependency_map[_i, _j]
	if (_dep & NORTH) {
		draw_sprite_ext(sMinimapNorth, 0, _x, _y, _scale, _scale, 0, c_white, 1)
	}
	if (_dep & SOUTH) {
		draw_sprite_ext(sMinimapSouth, 0, _x, _y, _scale, _scale, 0, c_white, 1)
	}
	if (_dep & EAST) {
		draw_sprite_ext(sMinimapEast, 0, _x, _y, _scale, _scale, 0, c_white, 1)
	}
	if (_dep & WEST) {
		draw_sprite_ext(sMinimapWest, 0, _x, _y, _scale, _scale, 0, c_white, 1)
	}
}

function adjacent_to_visible_in_minimap(_i, _j, _room) {
	if ((_i == global.map_gen.map_size/2 and _j == global.map_gen.map_size/2) or _room == 9) {
		return true
	}
	with(global.game) {
		// Check North
		if (_j != 0) {
			if (visible_minimap[_i, _j-1] and room_type_same(_i, _j-1, _room)) {
				return true
			}
		}
		// south
		if (_j != global.map_gen.map_size-1) {
			if (visible_minimap[_i, _j+1]and room_type_same(_i, _j+1, _room)) {
				return true
			}
		}
		// west
		if (_i != 0) {
			if (visible_minimap[_i -1, _j]and room_type_same(_i-1, _j, _room)) {
				return true
			}
		}
		// east
		if (_i != global.map_gen.map_size-1) {
			if (visible_minimap[_i+1, _j] and room_type_same(_i+1, _j, _room)) {
				return true
			}
		}
	}
}

function room_type_same(_i,_j,_room) {
	return global.map_gen.map[_i, _j] == _room or global.map_gen.map[_i, _j] - 4 == _room or global.map_gen.map[_i,_j] + 4 == _room or (_i == global.map_gen.map_size/2 and _j == global.map_gen.map_size/2) or _room == 9
}

//draw_sprite(map_sprites[map[_i, _j]], 0, x + (_i*18), y + (_j*18))
function update_bounded_minimap() {
	with(global.game) {
		if (!visible_minimap[current_room_x, current_room_y]) {
			// We have not been in this room yet, update bounding variables and visible minimap object
			var _current_room_dep = global.map_gen.dependency_map[current_room_x, current_room_y]
			visible_minimap[current_room_x, current_room_y] = _current_room_dep

			if (_current_room_dep & NORTH and minimap_seed_y == current_room_y) {
				// We need to expand the map upwards
				minimap_seed_y -= 1
				visible_height += 1
			}
			if (_current_room_dep & SOUTH and minimap_seed_y + visible_height - 1 == current_room_y) {
				// We need to expand the map downwards
				visible_height += 1
			}
			if (_current_room_dep & WEST and minimap_seed_x == current_room_x) {
				// We need to expand the map to the left
				minimap_seed_x -= 1
				visible_width += 1
			}
			if (_current_room_dep & EAST and minimap_seed_x + visible_width - 1 == current_room_x) {
				// We need to expand the map to the right
				visible_width += 1
			}
		}
	}
	
}