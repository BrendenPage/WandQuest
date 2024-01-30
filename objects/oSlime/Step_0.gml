/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, oPlayer)) {
	ctr += 1
}

with(hitbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}

with(slime_hurtbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}

move_and_collide(1,1,oCollide)