//move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//collision 
if place_meeting(x,y,oCollide){ destroy = true;}

x += xspd;
y += yspd;

//clean up
//destory

if place_meeting(x,y,oHurtbox){ destroy = true;}

if destroy == true{
	instance_destroy(hitbox);
	instance_destroy();

}

if point_distance(xstart,ystart,x,y) > max_dist{ destroy = true;}
