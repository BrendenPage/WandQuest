/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(sMapBackground, 0, 316, 172, map_size*18, map_size*18, 0, c_white, 0.9)
x = 316
y = 172

for (var _i = 0; _i < map_size; _i++) {
	for (var _j = 0; _j < map_size; _j++) {
		if (map[_i, _j] > 4) {
			draw_sprite(sUiMapSpecial, 0, x + (_i*18), y + (_j*18))
		} else {
			if (_i == map_size/2 and _j = map_size/2) {
				draw_sprite(sUiMapHome, 0, x + (_i*18), y + (_j*18))
			} else {
				draw_sprite(map_sprites[map[_i, _j]], 0, x + (_i*18), y + (_j*18))
			}
			
		}
	}
}