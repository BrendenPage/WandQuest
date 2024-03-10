// @description deals damager's damage to entity
function deal_damage(entity, damage){
	// knockback
	var _knockback_dir = point_direction(other.x,other.y,entity.x,entity.y)
	entity.knockback_dir = _knockback_dir
	entity.knockback_spd = 5
	entity.knockback_frames = 5
	
	
	if variable_instance_exists(entity, "invincible") {
		if (entity.invincible) {
			return;
		}
		entity.invincible = true
		entity.remaining_i_frames = entity.i_frames
	}
	
	

	
	if (variable_instance_exists(entity,"shield")) {
		var _damage_to_shield = min(entity.shield, damage)
		entity.shield -= _damage_to_shield
		damage -= _damage_to_shield
	}
	
	entity.remaining_health = max(0,entity.remaining_health - damage)
	
	if (entity == global.game.player) {
		global.enemies_killed_without_taking_damage = 0
	}
	/*if (DEBUG) {
		show_debug_message("Remaining health: " + string(entity.remaining_health))
	}*/
}
