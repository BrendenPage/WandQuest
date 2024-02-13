event_inherited()

//move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//collision 
if place_meeting(x,y,oCollide){instance_destroy(self)}

x += xspd;
y += yspd;

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
