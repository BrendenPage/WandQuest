
/**
 * Checks if the specified deck (attack or special) is at its maximum capacity.
 * Returns true if the specified deck has reached its maximum capacity, otherwise returns false.
 *
 * @param {boolean} _is_attack_deck - true for Attack Deck, false for Special Deck.
 *
 * @return {boolean} - Returns true if the specified deck has reached its maximum capacity,
 *                     otherwise returns false.
 */
function is_deck_full(_is_attack_deck){
	if (_is_attack_deck){
		return oPlayer.attack_deck_obj.cur_deck_size == oPlayer.attack_deck_obj.max_deck_size
	}else{
		return oPlayer.special_deck_obj.cur_deck_size == oPlayer.special_deck_obj.max_deck_size
	}
}

/**
 * Shuffles the specified deck (either attack or special) of the player and resets the current deck index to 0.
 * 
 * @param {boolean} _is_attack_deck  - true for Attack Deck,
 *									   false for Special Deck.								   
 */

function shuffle_deck(_is_attack_deck){
	if(_is_attack_deck){
		oPlayer.attack_deck_obj.deck = array_shuffle(oPlayer.attack_deck_obj.deck)
		oPlayer.attack_deck_obj.cur_deck_index = 0
	}else{
		oPlayer.special_deck_obj.deck = array_shuffle(oPlayer.special_deck_obj.deck)
		oPlayer.special_deck_obj.cur_deck_index = 0
	}
}

/**
 * Adds a card to the player's specified deck (attack or special).
 * The card will not be added if the specified deck is full.
 * The caller is responsible for calling card_replace_menu_popup() or replace_card() if the deck is full.
 *
 * @param {boolean} _is_attack_deck - true for Attack Deck,
 *									  false for Special deck.			  
 * @param {Number} _card_index - The index of the card in the global spell struct to be added to the deck.
 *								 The index can be accessed by global.attack_spell_struct.<spell_name>.spell_index
 */
function add_card_to_deck(_is_attack_deck, _card_index){
	if(!is_deck_full(_is_attack_deck)){
		if(_is_attack_deck){
				var _chosen_attack_spell = ds_map_find_value(global.attack_spell_map, _card_index)
				array_push(oPlayer.attack_deck_obj.deck, _chosen_attack_spell)
				oPlayer.attack_deck_obj.cur_deck_size++
		}else{
				var _chosen_special_spell = ds_map_find_value(global.special_spell_map, _card_index)
				array_push(oPlayer.special_deck_obj.deck, _chosen_special_spell)
				oPlayer.special_deck_obj.cur_deck_size++
		}
	}else{
		show_debug_message("Deck is full.")
	}
}


/**
 * Removes a specific card from a deck, identified by the card index.
 * Will not remove if the deck contain only 1 card. 
 *
 * 
 * @param {boolean} _is_attack_deck - true for Attack Deck,
 *									  false for Special deck.
 * @param {Number} _card_index - The index of the card in the global spell struct to be added to the deck.
 *								 The index can be accessed by global.attack_spell_struct.<spell_name>.spell_index
 */
function remove_card(_is_attack_deck, _card_index) {
	var _card_found = false
	
	var _deck = oPlayer.attack_deck_obj
	if(!_is_attack_deck) {
		_deck = oPlayer.special_deck_obj
	}
	
	if(_deck.cur_deck_size <= 1) {
		return
	}

	for(var _i = 0 ; _i < _deck.cur_deck_size; _i++) {
		if(_deck.deck[_i].spell_index == _card_index) {
			array_delete(_deck.deck, _i, 1)
			_deck.cur_deck_size--
			_deck.cur_deck_index = 0
			_card_found = true
			break
		}
	}
	
	if(_card_found == false and DEBUG) {
		show_debug_message("Target card not found, nothing to remove.")
	}
}

/**
 * Replaces a target card within a deck with a new card.
 * If target card is not found, no card will be added or removed
 *
 * @param {boolean} _is_attack_deck - true for Attack Deck,
 *									  false for Special deck.
 * @param {Number} _target_card_index - The index of the card in the deck to be replaced.
 *										The index can be accessed by global.attack_spell_struct.<spell_name>.spell_index
 * @param {Number} _new_card_index - The index of the new card to be added to the deck.
 *									 The index can be accessed by global.attack_spell_struct.<spell_name>.spell_index
 */
 
function replace_card(_is_attack_deck, _target_card_index, _new_card_index){
	remove_card(_is_attack_deck,_target_card_index)
	add_card_to_deck(_is_attack_deck, _new_card_index)
}


global.deck_menu_state = {
is_replacing: false,
is_replacing_attack: true,
incoming_card_ind: -1
}

function card_replace_menu_popup(_is_attack_deck, _card_index){

	room_goto(Pause)
	global.deck_menu_state.is_replacing = true
	global.deck_menu_state.is_replacing_attack = _is_attack_deck
	global.deck_menu_state.incoming_card_ind = _card_index

}

