/// @description Insert description here
// You can write your code in this editor
event_inherited()

var ref = self

if instance_exists(hitbox) {
	with (hitbox) {
		with(oHurtbox){
			if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
				instance_destroy(ref);
			}
		}
	}
}

var _xspd = lengthdir_x(spd, dir);
var _yspd = lengthdir_y(spd, dir);

//collision 

with (oCollide) {
	if place_meeting(x,y,other) and !(object_is_ancestor(object_index,oEnemyParent) or object_index == oPlayer) {
		show_debug_message(object_is_ancestor(object_index,oPlayer))
		show_debug_message("Object belongs to: "+object_get_name(object_index))
		instance_destroy(other)
	}
}

x += _xspd;
y += _yspd;

//clean up
//destroy

var ref = self

with (hitbox) {
	with(oHurtbox){
		if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
			instance_destroy(ref)
		}
	}
}

if point_distance(xstart,ystart,x,y) > max_dist{ instance_destroy(self)}