/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

with (oPlayer) {
	var _dir = point_direction(other.x,other.y,x,y)
}

mag_dir_move_and_collide(speed_,_dir)