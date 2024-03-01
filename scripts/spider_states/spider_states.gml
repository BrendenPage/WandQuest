// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spider_idle_wait(){
	if(state_ctr == 0){
		state = spider_dash
		state_ctr = dash_time
	}
}

function spider_dash(){
	var _dist = distance_to_object(global.game.target)
	if (_dist > attack_distance) {
		move_towards_player()
	} else {
		if(irandom(1) == 0) {
			// dash mode
			speed_ = aggro_speed
			state_ctr += 20
			state = spider_aggro_dash_mode
		} else {
			// shot mode
			path_end()
			state = spider_aggro_shot_mode
			state_ctr = aggro_shot_time
		}
	}
	
	
	if(state_ctr == 0) {
		state = spider_idle_wait
		state_ctr = idle_wait_time
		path_end()
	}
}

function spider_aggro_dash_mode(){
	var _dist = distance_to_object(global.game.target)
	if (_dist > attack_distance) {
		move_towards_player()
	} else {
		path_end()
		with (global.game.target) {
			var _dir_to_player = point_direction(other.x,other.y,x,y)
		}
		_dir_to_player += irandom_range(-50,50)
		mag_dir_move_and_collide_enemy(speed_,_dir_to_player)
	}
	
	if(state_ctr == 0) {
		state = spider_idle_wait
		state_ctr = idle_wait_time
		speed_ = standard_speed
		path_end()
	}
}

function spider_aggro_shot_mode(){
	if(state_ctr % 15 == 0) {
		with (global.game.target) {
			var _dir_to_player = point_direction(other.x,other.y,x,y)
		}
		spider_shoot((_dir_to_player - 15) % 360)
		spider_shoot(_dir_to_player)
		spider_shoot((_dir_to_player + 15) % 360)
	}

	if(state_ctr == 0) {
		state = spider_idle_wait
		state_ctr = idle_wait_time
		path_end()
	}
}

function spider_shoot(_dir) {
	var _total_offset = 50
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	shot = instance_create_depth(x+_x_off,y+_y_off,depth-1,oSpiderShot)
	shot.dir = _dir
}