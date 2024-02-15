// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum RED_GUN_TIMERS{
	RED_GUN_IDLE = 30,
	RED_GUN_SHOT_COOLDOWN = 70,
}

// not a state. Shoots a bullet in a direction
function red_gun_shoot(_dir) {
	var _total_offset = 50
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	bullet = instance_create_depth(x+_x_off,y+_y_off,depth-1,oGunBullet)
	bullet.dir = _dir
}

// not a state. Shoots bullets in a spread at the player
function red_gun_scattershot() {
	with (oPlayer) {
		var _dir_to_player = point_direction(other.x,other.y,x,y)
		_dir_to_player += random_range(-5,5)
	}
	
	for (i = 0; i < 3; i++) {
		red_gun_shoot(_dir_to_player - 20 + 20 * (i))
	}
}

function red_gun_starshot() {
	with (oPlayer) {
		var _dir_to_player = point_direction(other.x,other.y,x,y)
		_dir_to_player += random_range(-5,5)
	}
	for (i = 0; i < 8; i++) {
		red_gun_shoot((_dir_to_player + 45 * (i)) % 360)
	}
}

function red_gun_idle(){
	
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
	
	var _dist = distance_to_object(global.game.player)
	// move in the direction
	if (_dist > attack_distance or collision_line(x,y,global.game.player.x, global.game.player.y,oWall, false, true)) {
		move_towards_player()
	} else {
		path_end()
		mag_dir_move_and_collide(speed_,move_dir)
	}
	
	
	if (state_ctr == 0) {
		state_ctr = RED_GUN_TIMERS.RED_GUN_IDLE
		state = red_gun_idle
		move_dir = random(360)
	}
	
	shot_ctr = max(0,shot_ctr - 1)
	if (shot_ctr == 0) {
		if (irandom(1) == 0) {
			red_gun_scattershot()
		} else {
			red_gun_starshot()
		}
		shot_ctr = RED_GUN_TIMERS.RED_GUN_SHOT_COOLDOWN
	}
	
}