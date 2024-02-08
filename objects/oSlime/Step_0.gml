/// @description Insert description here
// You can write your code in this editor

event_inherited();

script_execute(state)

with(hitbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}

with(hurtbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}