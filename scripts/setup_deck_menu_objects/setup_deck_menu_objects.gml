// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_deck_menu_objects(){
	for (var _i = 0; _i < 4; _i++) {
		for (var _j = 0; _j < 2; _j++) {
			global.attacks[_i,_j].image_xscale = 0.7
			global.attacks[_i,_j].image_yscale = 0.7
			global.specials[_i,_j].image_xscale = 0.7
			global.specials[_i,_j].image_yscale = 0.7
		}
	}
	
	global.deck_menu.attacks = global.attacks
	global.deck_menu.specials = global.specials

	// TODO: Actually get the number of attacks and specials
	var _num_attacks = oPlayer.attack_deck_obj.cur_deck_size

	var _num_specials = 2
	var _ind = 0
	var _temp_deck = oPlayer.attack_deck_obj

	for (var _i = 0; _i < 4; _i++) {
		for (var _j = 0; _j < 2; _j++) {
			_ind = 4 * _j + _i
			if (_ind < _num_attacks) {
				global.deck_menu.attacks[_i,_j].sprite_index = sAttacks
				// TODO: Actually get the right attack
				global.deck_menu.attacks[_i,_j].image_index = _temp_deck.deck[_ind].spell_index
				global.deck_menu.attacks[_i,_j].image_speed = 0
				// TODO: Set description text accordingly
			}
		
			if (_ind < _num_specials) {
				global.deck_menu.specials[_i,_j].sprite_index = sSpecials
				// TODO: Actually get the right special
				global.deck_menu.specials[_i,_j].image_index = 2
				global.deck_menu.specials[_i,_j].image_speed = 0
				// TODO: Set description text accordingly
			}
		}
	}
}