// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slime_idle_wait(){
	state_ctr = max(0,state_ctr - 1)
	stamina = min(max_stamina, stamina + 0.01)
	
	var _dist = point_distance(x,y,oPlayer.x,oPlayer.y)
	if(_dist < dash_proximity && stamina >= 1) {
		state = slime_dash_windup
		state_ctr = dash_windup_time
	}
	
	if(state_ctr == 0){
		state = slime_idle_move
		state_ctr = idle_move_time
		idle_move_dir = (point_direction(x,y,oPlayer.x,oPlayer.y) + irandom_range(-45,45)) % 360
	}
}

function slime_idle_move(){
	state_ctr = max(0,state_ctr - 1)
	
	var _dist = point_distance(x,y,oPlayer.x,oPlayer.y)
	if(_dist < dash_proximity && stamina >= 1) {
		state = slime_dash_windup
		state_ctr = dash_windup_time
	}
	
	mag_dir_move_and_collide(speed_,idle_move_dir)
	
	if(state_ctr == 0){
		state = slime_idle_wait
		state_ctr = idle_wait_time
	}
}

function slime_dash_windup(){
	state_ctr = max(0,state_ctr - 1)
	// opposite direction
	var _dir = (180 + point_direction(x,y,oPlayer.x,oPlayer.y)) % 360
	mag_dir_move_and_collide(speed_,_dir)
	if(state_ctr == 0) {
		stamina -= 1
		state = slime_dashing
		state_ctr = active_dash_time
		dash_dir = point_direction(x,y,oPlayer.x,oPlayer.y)
	}
}

function slime_dashing(){
	state_ctr = max(0,state_ctr - 1)
	mag_dir_move_and_collide(speed_ * 4,dash_dir)
	if (state_ctr == 0) {
		state_ctr = idle_wait_time
		state = slime_idle_wait
	}
}
