/// @description Insert description here
// You can write your code in this editor

if (remaining_health == 0){
	instance_destroy()
	set_warp_points()
	if (instance_number(oEnemyParent) == 0 and is_wing_cleared()) {
		instance_create_depth(0,0,-1000,oCardChoices)
		global.game_paused = true
	}
}

if instance_exists(hitbox) {
	with (hitbox) {
		with(oHurtbox){
			if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
				deal_damage(owner, other.owner.damage)
			}
		}
	}
}

remaining_i_frames = max(0,remaining_i_frames - 1)
if (remaining_i_frames == 0) {
	invincible = false
}