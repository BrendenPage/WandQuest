// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum GUN_TIMERS{
	GUN_IDLE = 30,
	GUN_SHOT_COOLDOWN = 70,
}

// not a state. Shoots a bullet in a direction
function gun_shoot(_dir) {
	var _total_offset = 50
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	bullet = instance_create_depth(x+_x_off,y+_y_off,depth-1,oGunBullet)
	bullet.dir = _dir
}

function gun_idle(){
	
	// face the player
	
	var original_angle = image_angle
	with (oPlayer) {
		var _dir = point_direction(other.x,other.y,x,y)
		if (_dir > 90 and _dir < 270) {
			other.image_xscale = -1
			_dir = (_dir + 180) % 360
		} else {
			other.image_xscale = 1
		}
		other.image_angle = _dir
	}
	
	// don't rotate if it'll move into a collision
	if (place_meeting(x,y,oCollide)) {
		image_angle = original_angle
	}
	
	// move in the direction
	mag_dir_move_and_collide(speed_,move_dir)
	
	
	if (state_ctr == 0) {
		state_ctr = GUN_TIMERS.GUN_IDLE
		state = gun_idle
		move_dir = random(360)
	}
	
	shot_ctr = max(0,shot_ctr - 1)
	if (shot_ctr == 0) {
		with (oPlayer) {
			var _dir_to_player = point_direction(other.x,other.y,x,y)
		}
		_dir_to_player += random_range(-5,5)
		gun_shoot(_dir_to_player)
		shot_ctr = GUN_TIMERS.GUN_SHOT_COOLDOWN
	}
	
}