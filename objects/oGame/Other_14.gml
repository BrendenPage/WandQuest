/// @description Populate enemies
if (!global.tutorial_seen) { exit }
if (room == DBoss1) {
	instance_create_layer(252, 144, "Enemies", oSlimeBoss)
	exit
}
if (DEBUG) {
	show_debug_message("Populating Enemies")
}
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
var _map = layer_tilemap_get_id("tiles_wall")
var _enemies_spawned = 0
var _enemy_count = irandom_range(MIN_ENEMIES, MAX_ENEMIES)*enemy_spawn_rate(current_room_x, current_room_y)
var _projectile_enemies = irandom_range(0, _enemy_count/2)
while(_enemies_spawned < _enemy_count) {
	for (var yy = 0; yy < _h; ++yy) {
	    for (var xx = 0; xx < _w; ++xx) {
		    var _t1 = tilemap_get(_map, xx, yy);
			if !(_t1 >= 1 and _t1 <= 47) {
				if (point_distance(xx*TS, yy*TS, player.x, player.y) >= ENEMY_SPAWN_NEAR_PLAYER_THRESHOLD) {
					if (random(1) <= 0.005) {
						var _enemy = instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", choose_enemy(_projectile_enemies-- > 0))
						_enemies_spawned++
						if (_enemies_spawned >= _enemy_count){
							exit
						}
					}
				}
			}
		}
	}
}

