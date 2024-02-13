/// @description Insert description here
// You can write your code in this editor


x = owner.x + x_offset
y = owner.y + y_offset

with(oHurtbox){
	if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
		deal_damage(owner, other.owner.damage)
	}
}




