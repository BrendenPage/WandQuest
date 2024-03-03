// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shield_all_enemies() {
	var _own_room = room

	with (oEnemyParent) {
		if (room == _own_room) {
			shield = 20
		}
	}
}

function teleport() {
	for (var _i = 0; _i < 30; _i++) {
		var _dest_x = irandom(room_width)
		var _dest_y = irandom(room_height)
		if (not place_meeting(_dest_x,_dest_y,[oWall,oDoor,oPlayer,oEnemyParent]) and
				point_distance(_dest_x,_dest_y,global.game.target.x,global.game.target.y) > WIZARD_TELEPORT_BUFFER) {
			x = _dest_x
			y = _dest_y
			break
		}
	}
}

function wizard_cd(){
	if (state_ctr == 0) {
		if (irandom(9) <= 2) {
			shield_all_enemies()
			state_ctr = action_cd
			state = wizard_cd
		} else {
			state_ctr = action_dur
			state = wizard_tp_and_shoot
		}
	}
}

function wizard_firebolt_shoot(_dir) {
	var _total_offset = 50
	var _x_off = lengthdir_x(_total_offset, _dir);
	var _y_off = lengthdir_y(_total_offset, _dir);
	var _firebolt = instance_create_depth(x+_x_off,y+_y_off,depth-1,oFireboltProjectile)
	// enemy firebolt
	_firebolt.hitbox.if_enemy = true
	_firebolt.dir = _dir
	_firebolt.spd = 4
	_firebolt.damage = 7
	_firebolt.passes_through_walls = true
	_firebolt.homing = true
	_firebolt.homing_strength = 0.01
	_firebolt.image_blend = c_blue
}

function wizard_tp_and_shoot(){
	if (state_ctr % 20 == 15) {
		teleport()
	}
	if (state_ctr % 20 == 0) {
		var _dir_to_player = point_direction(x,y, global.game.target.x,global.game.target.y)
		wizard_firebolt_shoot(_dir_to_player)
	}
	
	if (state_ctr == 0) {
		state_ctr = action_cd
		state = wizard_cd
	}
}