/// @description Insert description here
// You can write your code in this editor

if (remaining_health == 0){
	global.enemies_killed++
	global.enemies_killed_without_taking_damage++
	if (global.logging) {
		var _data = {
			curr_time: time(),
			ranged: projectile_enemy,
			enemy: string(typeof(self))
		}
		cap_logger_action_level(ENEMY_KILLED, json_stringify(_data))
	}
	instance_destroy()
	if (!global.tutorial_seen) { exit }
	set_warp_points()
	if (instance_number(oEnemyParent) == 0 and is_wing_cleared()) {
		instance_create_depth(0,0,-1000,oCardChoices)
		global.game_paused = true
	}
	exit
}

var _self = self

if instance_exists(hitbox) {
	with (hitbox) {
		with(oHurtbox){
			if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
				deal_damage(owner, other.owner.damage)
				_self.knockback_dir = point_direction(x,y,other.x,other.y)
				_self.knockback_frames = 5
				_self.knockback_spd = 5
			}
		}
	}
}

remaining_i_frames = max(0,remaining_i_frames - 1)
if (remaining_i_frames == 0) {
	invincible = false
}

if (knockback_frames > 0) {
	mag_dir_move_and_collide_wall_door(knockback_spd,knockback_dir)
	knockback_frames = max(0,knockback_frames - 1)
	image_blend = c_red
} else {
	image_blend = -1
}

scale_enemy()
