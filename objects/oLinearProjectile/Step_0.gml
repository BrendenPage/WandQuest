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

var _xspd = lengthdir_x(spd, dir);
var _yspd = lengthdir_y(spd, dir);

//collision 
if place_meeting(x,y,oCollide){instance_destroy(self)}

x += _xspd;
y += _yspd;

//clean up
//destroy

var ref = self

with (hitbox) {
	with(oHurtbox){
		if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
			instance_destroy(ref);
		}
	}
}

if point_distance(xstart,ystart,x,y) > max_dist{ instance_destroy(self)}