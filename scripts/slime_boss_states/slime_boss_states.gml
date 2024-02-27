// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum SLIME_BOSS_TIMERS {
	SLIME_BOSS_IDLE = 50,
	SLIME_BOSS_DASHING = 250,
	SLIME_BOSS_DRAWBACK = 15
}

function slime_boss_shoot(_dir) {
	var _total_offset = 100
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	bullet = instance_create_depth(x+_x_off,y+_y_off,depth-1,oSlimeBall)
	bullet.dir = _dir
}

function slime_boss_idle(){
	if (state_ctr == 0) {
		//with (oPlayer) {
		//	other.dash_dir = point_direction(other.x,other.y,x,y)
		//}
		dash_dir = point_direction(x,y,global.game.target.x,global.game.target.y)
		if (irandom(1) == 0) {
			state_ctr = SLIME_BOSS_TIMERS.SLIME_BOSS_DRAWBACK
			state = slime_boss_drawback
		} else {
			state_ctr = SLIME_BOSS_TIMERS.SLIME_BOSS_IDLE
			slime_boss_shoot(dash_dir)
		}
	}
}

function slime_boss_drawback() {
	mag_dir_move_and_collide(speed_/2,(dash_dir + 180) % 360)
	if (state_ctr == 0) {
		state = slime_boss_dashing
		state_ctr = SLIME_BOSS_TIMERS.SLIME_BOSS_DASHING
	}
}

function slime_boss_dashing() {
	x_mv = lengthdir_x(speed_,dash_dir)
	y_mv = lengthdir_y(speed_,dash_dir)
	
	var x_bounce = false
	var y_bounce = false
	
	if place_meeting(x + x_mv,y,oCollide) {
		x_bounce = true
	}
	if place_meeting(x,y + y_mv,oCollide) {
		y_bounce = true
	}
	
	if (x_bounce) {
		dash_dir = (180 - dash_dir) % 360
	}
	
	if (y_bounce) {
		dash_dir = (-dash_dir) % 360
	}
	
	move_and_collide(x_mv,y_mv,oCollide)
	
	
	if (state_ctr == 0) {
		state_ctr = SLIME_BOSS_TIMERS.SLIME_BOSS_IDLE
		state = slime_boss_idle
	}
}