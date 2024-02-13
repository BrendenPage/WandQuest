// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum GUN_STATE_TIMES{
	GUN_IDLE = 30,
}

function gun_idle(){
	
	// face the player
	
	var original_angle = image_angle
	with (oPlayer) {
		var dir = point_direction(other.x,other.y,x,y)
		if (dir > 90 and dir < 270) {
			other.image_xscale = -1
			dir = (dir + 180) % 360
		} else {
			other.image_xscale = 1
		}
		other.image_angle = dir
	}
	
	// don't rotate if it'll move into a collision
	if (place_meeting(x,y,oCollide)) {
		image_angle = original_angle
	}
	
	// move in the direction
	mag_dir_move_and_collide(speed_,move_dir)
	
	if (state_ctr == 0) {
		state_ctr = GUN_STATE_TIMES.GUN_IDLE
		state = gun_idle
		move_dir = random(360)
		show_debug_message(move_dir)
	}
}