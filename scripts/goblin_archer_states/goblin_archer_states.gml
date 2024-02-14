// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum GOBLIN_ARCHER_TIMERS{
	GOBLIN_ARCHER_IDLE = 80,
	ARROW_COOLDOWN = 150,
}

// not a state. Shoots an arrow in a direction
function arrow_shoot(_dir) {
	var _total_offset = 50
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	arrow = instance_create_depth(x+_x_off,y+_y_off,depth-1,oArrow)
	arrow.dir = _dir
}


function goblin_archer_idle(){
	mag_dir_move_and_collide(speed_,move_dir)
	if (state_ctr == 0) {
		if (irandom(1) == 0) {
			speed_ = 0
		} else {
			speed_ = 0.5
		}
		move_dir = irandom(360)
		state_ctr = GOBLIN_ARCHER_TIMERS.GOBLIN_ARCHER_IDLE
		state = goblin_archer_idle
	}
	
	if (shot_ctr == 0) {
		with (oPlayer) {
			var _dir_to_player = point_direction(other.x,other.y,x,y)
		}
		_dir_to_player += random_range(-5,5)
		arrow_shoot(_dir_to_player)
		shot_ctr = GOBLIN_ARCHER_TIMERS.ARROW_COOLDOWN
	}
}