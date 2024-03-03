/// @description Insert description here
// You can write your code in this editor

draw_self()


draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _left_bd = bbox_left
var _right_bd = bbox_right
var _top_bd = bbox_top
var _bot_bd = bbox_bottom

var _middle_x = _left_bd / 2 + _right_bd / 2
var _middle_y = _top_bd / 2 + _bot_bd / 2

var _top_text_y = _top_bd * 9 / 10 + _bot_bd / 10
var _attack_middle_x = _left_bd / 2 + _middle_x / 2
var _specials_middle_x = _middle_x / 2 + _right_bd / 2

var _num_attacks = oPlayer.attack_deck_obj.cur_deck_size
var _num_specials = oPlayer.special_deck_obj.cur_deck_size


draw_text(_attack_middle_x,_top_text_y, "Attacks (" + string(_num_attacks) + "/8):")
draw_text(_specials_middle_x,_top_text_y, "Specials (" + string(_num_specials) + "/8):")

var _text_height = _bot_bd * 7 / 8 + _top_bd / 8

for(var _i = 0; _i < 4; _i++) {
	for(var _j = 0; _j < 2; _j++) {
		if (position_meeting(mouse_x,mouse_y,global.attacks[_i,_j]) and global.attacks[_i,_j].sprite_index == sAttacks) {
			draw_text(_middle_x,_text_height, global.attacks[_i,_j].choice_explanation)
		}
		
		if (position_meeting(mouse_x,mouse_y,global.specials[_i,_j]) and global.specials[_i,_j].sprite_index == sSpecials) {
			draw_text(_middle_x,_text_height, global.specials[_i,_j].choice_explanation)
		}
	}
}

//card swaping
// Working, but very bad code
#region
	if(is_replacing){
		global.game_paused = true
		draw_text(x-210,y+180 , "Your deck is full! \nClick to swap out a unwanted card!")
		var _chosen_id = -1
		var _found = false
	
		for(var _i = 0; _i < 4; _i++) {
			for(var _j = 0; _j < 2; _j++) {
				if(is_replacing_attack){//attacks
					if (position_meeting(mouse_x,mouse_y,global.attacks[_i,_j]) 
						and global.attacks[_i,_j].sprite_index == sAttacks
						and mouse_check_button_pressed(mb_left)) {
					
						for(var _spell_index = 2; _spell_index <= 6; _spell_index++){
							var _spellInstance = ds_map_find_value(global.attack_spell_map, _spell_index)
							if(_spellInstance.description_text == global.attacks[_i,_j].choice_explanation){
								_chosen_id = _spell_index
								_found = true
							}
						}
					}
				}else{//specials
					if (position_meeting(mouse_x,mouse_y,global.specials[_i,_j]) 
						and global.specials[_i,_j].sprite_index == sSpecials
						and mouse_check_button_pressed(mb_left)) {
					
						for(var _spell_index = 2; _spell_index <= 6; _spell_index++){
							var _spellInstance = ds_map_find_value(global.special_spell_map, _spell_index)
							if(_spellInstance.description_text == global.specials[_i,_j].choice_explanation){
								_chosen_id = _spell_index
								_found = true
							}
						}
					}
				}
		
			}
		}
	
		if(_found == true){
			replace_card(is_replacing_attack,_chosen_id,incoming_card_ind)
			is_replacing = false
			global.deck_menu_state.is_replacing = false
			global.game_paused = false
			room_goto(global.current_room)
		}
	

	}
#endregion




draw_set_halign(fa_left);
draw_set_valign(fa_top);
