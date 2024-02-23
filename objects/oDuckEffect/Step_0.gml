
duration_timer = max(0,duration_timer - 1)

var _xspd = lengthdir_x(spd, dir);
var _yspd = lengthdir_y(spd, dir);



//collision 
if place_meeting(x+_xspd, y , oWall){ _xspd = 0 }
if place_meeting(x, y + _yspd, oWall){ _yspd = 0 }

x += _xspd
y += _yspd




if duration_timer == 0 || remaining_health <= 0{
	global.game.target = global.game.player
	instance_destroy(self)
}














