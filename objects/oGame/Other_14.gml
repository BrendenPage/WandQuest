/// @description Populate enemies
show_debug_message("Populating Enemies")
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
var _map = layer_tilemap_get_id("tiles_wall")
for (var yy = 0; yy < _h; ++yy) {
    for (var xx = 0; xx < _w; ++xx) {
	    var _t1 = tilemap_get(_map, xx, yy);
		if !(_t1 >= 1 and _t1 <= 47) {
			if (xx > ENEMY_SPAWN_NEAR_PLAYER_TILE_THRESHOLD and xx < _w - ENEMY_SPAWN_NEAR_PLAYER_TILE_THRESHOLD and yy > ENEMY_SPAWN_NEAR_PLAYER_TILE_THRESHOLD and yy < _h - ENEMY_SPAWN_NEAR_PLAYER_TILE_THRESHOLD) {
				if (random(1) <= enemy_spawn_rate(current_room_x, current_room_y)) {
					//var _enemy = instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", choose_enemy())
					//_enemy.image_xscale = player.image_xscale
					//_enemy.image_yscale = player.image_yscale
				}
			}
		}
	}
}
