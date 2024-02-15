/// @description Insert description here
// You can write your code in this editor

var _width = sprite_get_width(sDeckMenu)
var _height = sprite_get_height(sDeckMenu)

attacks = []
specials = []

for (var _i = 0; _i < 4; _i++) {
	for (var _j = 0; _j < 2; _j++) {
		attacks[_i,_j] = instance_create_depth(x + _width * (_i + 1) / 10,y + 2 * _height / 7 + _j * _height / 4,depth-1,oDeckMenuChoice)
		specials[_i,_j] = instance_create_depth(x + _width * (_i + 1) / 10 + _width / 2,y + 2 * _height / 7 + _j * _height / 4,depth-1,oDeckMenuChoice)
	}
}
//instance_create_depth(_attack_top_left_x,_attack_top_left_y + 300,depth-1,oDeckMenuChoice)

// TODO: Actually get the number of attacks and specials
num_attacks = oPlayer.attack_deck_obj.cur_deck_size

num_specials = 2
var _ind = 0
var _temp_deck = oPlayer.attack_deck_obj

for (var _i = 0; _i < 4; _i++) {
	for (var _j = 0; _j < 2; _j++) {
		_ind = 4 * _j + _i
		if (_ind < num_attacks) {
			attacks[_i,_j].sprite_index = sAttacks
			// TODO: Actually get the right attack
			attacks[_i,_j].image_index = _temp_deck.deck[_ind].spell_index
			attacks[_i,_j].image_speed = 0
			// TODO: Set description text accordingly
		}
		
		if (_ind < num_specials) {
			specials[_i,_j].sprite_index = sSpecials
			// TODO: Actually get the right special
			specials[_i,_j].image_index = 2
			specials[_i,_j].image_speed = 0
			// TODO: Set description text accordingly
		}
	}
}