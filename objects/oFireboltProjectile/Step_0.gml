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



if point_distance(xstart,ystart,x,y) > max_dist{ destroy = true;}
