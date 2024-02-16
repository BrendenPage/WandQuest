// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @description a state where the slime waits in place.
function slime_idle_wait(){
	stamina = min(max_stamina, stamina + 0.01)
	
	var _dist = distance_to_object(global.game.player)
	if(_dist < dash_proximity && stamina >= 1) {
		state = slime_dash_windup
		state_ctr = dash_windup_time
	}
	
	if(state_ctr == 0){
		state = slime_idle_move
		state_ctr = idle_move_time
		idle_move_dir = (point_direction(x,y,global.game.player.x,global.game.player.y) + irandom_range(-45,45)) % 360
	}
}

// @description a state where the slime moves a short distance towards the player
function slime_idle_move(){
	var _dist = distance_to_object(global.game.player)
	if(_dist < dash_proximity and stamina >= 1 and collision_line(x, y, global.game.player.x, global.game.player.y, oWall, true, true)) {
		state = slime_dash_windup
		state_ctr = dash_windup_time
	}
	
	move_towards_player()
	
	if(state_ctr == 0){
		path_end()
		state = slime_idle_wait
		
		state_ctr = idle_wait_time
	}
}

// @description a state where the slime moves slightly away from the player, preparing to dash
function slime_dash_windup(){
	path_end()
	// opposite direction
	var _dir = (180 + point_direction(x,y,global.game.player.x,global.game.player.y)) % 360
	mag_dir_move_and_collide_enemy(speed_,_dir)
	if(state_ctr == 0) {
		stamina -= 1
		state = slime_dashing
		state_ctr = active_dash_time
		dash_dir = point_direction(x,y,global.game.player.x,global.game.player.y)
	}
}

// @description a state where the slime is dashing towards the player
function slime_dashing(){
	path_end()
	mag_dir_move_and_collide_enemy(speed_ * 4,dash_dir)
	if (state_ctr == 0) {
		state_ctr = idle_wait_time
		state = slime_idle_wait
	}
}
