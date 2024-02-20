/// @description Insert description here
// You can write your code in this editor


if (hitbox) {
	with (hitbox) {
		if instance_exists(oHurtbox) {
			with(oHurtbox){
				if (other and owner) {
					if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
						show_debug_message(other.owner)
						deal_damage(owner, other.owner.damage)
					}
				}
			}
		}
	}
}