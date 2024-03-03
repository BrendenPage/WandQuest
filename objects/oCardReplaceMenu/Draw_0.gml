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

draw_set_halign(fa_left);
draw_set_valign(fa_top);
