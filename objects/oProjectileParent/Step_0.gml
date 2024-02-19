/// @description Insert description here
// You can write your code in this editor


if instance_exists(hitbox) {
	with (hitbox) {
		with(oHurtbox){
			if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
				show_debug_message(other.owner)
				deal_damage(owner, other.owner.damage)
			}
		}
	}
}