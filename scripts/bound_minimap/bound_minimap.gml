function draw_bounded_minimap(){
	var _minimap_x = display_get_gui_width() - MINIMAP_OFFSET_X
	var _minimap_y = MINIMAP_OFFSET_Y
	draw_sprite_ext(sMapBackground, 0, _minimap_x, _minimap_y, map_size*18, map_size*18, 0, c_white, 0.9)
	for (var _i = global.game.minimap_seed_x; _i < global.game.minimap_seed_x + global.game.minimap_width; _i++) {
		for (var _j = global.game.minimap_seed_y; _j < global.game.minimap_seed_y + global.game.minimap_height; _j++) {
			
		}
	}
}