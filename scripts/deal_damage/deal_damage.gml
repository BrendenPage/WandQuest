// @description deals "damage" damage to "entity"
function deal_damage(entity, damage){
	if variable_instance_exists(entity, "invincible") {
		if (entity.invincible) {
			return;
		}
		entity.invincible = true
		entity.remaining_i_frames = entity.i_frames
	}
	entity.remaining_health = max(0,entity.remaining_health - damage)
	show_debug_message(entity.remaining_health)
}