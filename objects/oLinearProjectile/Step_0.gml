/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.game_paused) { exit }

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

if (homing and instance_exists(hitbox)) {
	if (!hitbox.if_enemy) {
		var _enemy = instance_nearest(x, y, oEnemyParent)
		if (_enemy != noone) {
			// There is a closest enemy, modify dir to be towards them
			var _dir_enemy = degtorad(point_direction(x,y, _enemy.x, _enemy.y))
			var _dir_rad = degtorad(dir)
			// Take weighted average of dir and dir to enemy
			var _x = (1-homing_strength) * cos(_dir_rad) + homing_strength * cos(_dir_enemy)
			var _y = (1-homing_strength) * sin(_dir_rad) + homing_strength * sin(_dir_enemy)
			dir = radtodeg(arctan2(_y,_x))
		}
	}
}

var _xspd = lengthdir_x(spd, dir);
var _yspd = lengthdir_y(spd, dir);

//collision 

with (oCollide) {
	if place_meeting(x,y,other) and !(object_is_ancestor(object_index,oEnemyParent) or object_index == oPlayer) {
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