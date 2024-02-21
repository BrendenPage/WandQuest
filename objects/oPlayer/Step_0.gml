if (keyboard_check_pressed(ord("P")) or keyboard_check_pressed(vk_escape)) {
	if (room == Pause) {
		room_goto(global.current_room)
		if (instance_number(oTutorial) == 0 and instance_number(oWeaponTutorial) == 0 and instance_number(oChoices) == 0) {
			global.game_paused = false
		}
	} else {
		room_goto(Pause)
		global.game_paused = true
		if (global.logging) {
			var _data = {
				curr_time: time()
			}
			cap_logger_action_level(PAUSED, json_stringify(_data))
		}
	}
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

var in_puddle = false
with(oSlimePuddle) {
	if (place_meeting(x,y,other)) {
		in_puddle = true
	}
}

if (in_puddle) {
	speed_modifier = 0.5
} else {
	speed_modifier = 1
}


move_speed = SPEED*speed_modifier;
var _key_left = keyboard_check(ord("A"))
var _key_right = keyboard_check(ord("D"))
var _key_up = keyboard_check(ord("W"))
var _key_down = keyboard_check(ord("S"))

var _key_attack = mouse_check_button(mb_left)
var _key_special = mouse_check_button(mb_right)

var _x_input = _key_right - _key_left
var _y_input = _key_down - _key_up

var _input_direction = point_direction(0,0,_x_input,_y_input)
var _input_magnitude = ((_x_input != 0) || (_y_input != 0)) * move_speed

mag_dir_move_and_collide(_input_magnitude,_input_direction)

remaining_i_frames = max(0,remaining_i_frames - 1)
if (remaining_i_frames == 0) {
	invincible = false
}


// attack spell casting
#region

//player aiming
aim_dir = point_direction(x,y,mouse_x,mouse_y)

// Shuffle & attack timer count down
AT_shuffle_timer = max(AT_shuffle_timer - 1, 0)

// If we have just shuffled, disregard cooldown time
if(AT_shuffle_timer == 0) {
	if (AT_shuffling) {
		AT_shuffling = false
		attack_timer = 0
	} else {
		attack_timer = max(attack_timer - 1, 0)
	}
} else {
	AT_shuffling = true
}

// Shoot attack projectile 
if _key_attack && (attack_timer <= 0) && (AT_shuffle_timer <= 0){

	if (attack_deck_obj.cur_deck_index < attack_deck_obj.cur_deck_size){
		attack_spell = attack_deck_obj.deck[attack_deck_obj.cur_deck_index]
		attack_deck_obj.cur_deck_index++
		// reset the timer
		attack_timer = attack_spell.cooldown
		// generate projectile
		cast_attack_spell(attack_spell,aim_dir)
	}
	
}

if (keyboard_check_pressed(ord("R"))) {
	attack_deck_obj.cur_deck_index = attack_deck_obj.cur_deck_size
}

if (attack_deck_obj.cur_deck_index == attack_deck_obj.cur_deck_size) {
	attack_deck_obj.deck = array_shuffle(attack_deck_obj.deck)
	attack_deck_obj.cur_deck_index = 0
	AT_shuffle_timer = attack_deck_obj.shuffle_cooldown
}

#endregion

// Special spell casting
#region

// Shuffle & special & duration timer count down
SP_shuffle_timer = max(SP_shuffle_timer - 1, 0)

if(AT_shuffle_timer == 0) {
	if (AT_shuffling) {
		AT_shuffling = false
		attack_timer = 0
	} else {
		attack_timer = max(attack_timer - 1, 0)
	}
} else {
	AT_shuffling = true
}

if(SP_shuffle_timer == 0) {
	if (SP_shuffling) {
		SP_shuffling =  false
		special_timer = 0
	} else {
		if(special_duration_timer == 0){
			special_timer = max(special_timer - 1, 0)
		}else{
			special_duration_timer = max(special_duration_timer - 1, 0)
		}
	}
} else {
	SP_shuffling = true
}

//Cast Specials
if(_key_special && (special_timer <= 0) && (SP_shuffle_timer <= 0)){
	//reset the timer
	
	
	// set the next card
	if (special_deck_obj.cur_deck_index < special_deck_obj.cur_deck_size){
		special_spell = special_deck_obj.deck[special_deck_obj.cur_deck_index]
		special_deck_obj.cur_deck_index++
		//Generate the spell
		var _special_inst = instance_create_depth(x , y, depth-98, special_spell.special_obj)
		if (global.logging) {
			var _data = {
				curr_time: time(),
				spell: special_spell.spell_name
			}
			cap_logger_action_level(SPECIAL_SPELL_USED, json_stringify(_data))
		}
		special_timer = special_spell.cooldown
		special_duration_timer = special_spell.duration
	}
}

if (special_deck_obj.cur_deck_index == special_deck_obj.cur_deck_size) {
	special_deck_obj.deck = array_shuffle(special_deck_obj.deck)
	special_deck_obj.cur_deck_index = 0
	SP_shuffle_timer = max(special_deck_obj.shuffle_cooldown, special_timer)
}


#endregion


if (knockback_frames > 0) {
	mag_dir_move_and_collide(knockback_spd,knockback_dir)
	knockback_frames = max(0,knockback_frames - 1)
}