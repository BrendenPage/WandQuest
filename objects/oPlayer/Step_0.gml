if (keyboard_check_pressed(ord("P"))) {
	room_goto(Pause)
	global.game_paused = true
}

if (global.game_paused) {
	visible = false
	exit
} else {
	visible = true
}

if (remaining_health == 0) {
	die()
}

move_speed = SPEED*speed_modifier;
var _key_left = keyboard_check(ord("A"))
var _key_right = keyboard_check(ord("D"))
var _key_up = keyboard_check(ord("W"))
var _key_down = keyboard_check(ord("S"))
var _key_attack = mouse_check_button(mb_left)

var _x_input = _key_right - _key_left
var _y_input = _key_down - _key_up

var _input_direction = point_direction(0,0,_x_input,_y_input)
var _input_magnitude = ((_x_input != 0) || (_y_input != 0)) * move_speed

mag_dir_move_and_collide(_input_magnitude,_input_direction)

remaining_i_frames = max(0,remaining_i_frames - 1)
if (remaining_i_frames == 0) {
	invincible = false
}

//player aiming
aim_dir = point_direction(x,y,mouse_x,mouse_y);

// Shoot attack projectile (only firebolt for now)
if attack_timer > 0 {attack_timer--;}

if _key_attack && attack_timer <= 0 {
	//reset the timer
	attack_timer = attack_cookdown;
	
	//create the projectile
	var _x_offset = lengthdir_x(wand_len , aim_dir);
	var _y_offset = lengthdir_y(wand_len , aim_dir);
	var _firebolt_inst = instance_create_depth(x +_x_offset , y +_y_offset, depth-100, firebolt_obj);

	// change the bullet's direction
	with(_firebolt_inst){
		dir  = other.aim_dir;	
	}
	
}


