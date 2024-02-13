/// @description Insert description here
// You can write your code in this editor

var ref = self

with (hitbox) {
	with(oHurtbox){
		if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
			instance_destroy(ref);
		}
	}
}
