/// @description Insert description here
// You can write your code in this editor

hitbox = noone
hurtbox = noone

invincible = false
i_frames = 15
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
