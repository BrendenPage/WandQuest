// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @description deals "damage" damage to "entity"
function deal_damage(entity, damage){
	if variable_instance_exists(entity, "invincible") {
		if (entity.invincible) {
			return;
		}
		entity.invincible = true
		entity.remaining_i_frames = entity.i_frames
	}
	show_debug_message(string(damage) + " damage dealt to " + string(entity))
}