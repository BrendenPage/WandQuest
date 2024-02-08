/// @description Insert description here
// You can write your code in this editor

if (global.game_paused) exit

//hurtbox update
with(hurtbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}
