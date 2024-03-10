/// @description Populate enemies
if (!global.tutorial_seen) { exit }
if (room == DBoss1) {
	instance_create_layer(252, 144, "Enemy", oSlimeBoss)
	exit
}

if (DEBUG) {
	show_debug_message("Populating Enemies")
}
var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)
var _map = layer_tilemap_get_id("tiles_wall")
var _enemies_spawned = 0
var _enemy_count = irandom_range(MIN_ENEMIES, MAX_ENEMIES)*enemy_spawn_rate()
var _projectile_enemies = irandom_range(0, _enemy_count/2)
// Boss rooms

var _bosses_spawned = 0
var _support_enemies_spawned = 0
var _boss_count = 0
var _support_enemy_count = 0
if (is_boss_room()) {
	switch(floor_) {
		case 1:
			_boss_count = 1
			break
		case 2:
			_boss_count = 1
			_support_enemy_count = 3
			break
		case 3:
			_boss_count = 2
			_support_enemy_count = 5
			break
		default:
			_boss_count = 3
			_support_enemy_count = 5
	}
}

if (num_wings_cleared() < 2 and floor_ == 1) {
	_projectile_enemies = 0
}

while(true) {
	for (var yy = 0; yy < _h; ++yy) {
	    for (var xx = 0; xx < _w; ++xx) {
		    var _t1 = tilemap_get(_map, xx, yy);
			if !(_t1 >= 1 and _t1 <= 47) {
				if (point_distance(xx*TS, yy*TS, player.x, player.y) >= ENEMY_SPAWN_NEAR_PLAYER_THRESHOLD) {
					if (random(1) <= 0.005) {
						if (is_current_room_normal()) {
							var _enemy = instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", choose_enemy(_projectile_enemies-- >= 1))
							_enemies_spawned++
							if (_enemies_spawned >= _enemy_count){
								exit
							}
						} else {
							if (_bosses_spawned < _boss_count) {
								_bosses_spawned++
								instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", oSlimeBoss)
							} else if (_support_enemies_spawned < _support_enemy_count) {
								_support_enemies_spawned++
								instance_create_layer(xx * TS + TS/2, yy * TS + TS/2, "Enemy", choose(oWizard, oWizard, oSpider))
							} else {
								// Spawned all bosses and support enemies for this boss room
								exit
							}
						}
					}
				}
			}
		}
	}
}

