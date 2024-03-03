/// @description Insert description here
// You can write your code in this editor

hitbox = noone
hurtbox = noone

invincible = false
i_frames = 0
remaining_i_frames = 0
// Are we close enough to aggro
attacking = false
// distance to start
alert_distance = 160
path = path_add()
array_push(global.paths_list, path)
attack_distance = 0
projectile_enemy = false

knockback_dir = 0
knockback_frames = 0
knockback_spd = 0

damage = 0

shield = 0

if (AB_TESTING) {
	var _test_health_ratios = [0.5,0.75,1,1.25]
	remaining_health = remaining_health * _test_health_ratios[global.ab_test_category]
	max_health = max_health * _test_health_ratios[global.ab_test_category]
}