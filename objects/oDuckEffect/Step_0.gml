
duration_timer = max(0,duration_timer - 1)

var _xspd = lengthdir_x(spd, dir);
var _yspd = lengthdir_y(spd, dir);



//collision 

var x_bounce = false
var y_bounce = false
	
if place_meeting(x + _xspd,y,oWall) {
	x_bounce = true
}
if place_meeting(x,y + _yspd,oWall) {
	y_bounce = true
}
	
if (x_bounce) {
	dir = (180 - dir) % 360
}
	
if (y_bounce) {
	dir = (-dir) % 360
}

move_and_collide(_xspd,_yspd,[oWall, oClosedDoor])

if duration_timer == 0 || remaining_health <= 0{
	instance_destroy(self)
}














