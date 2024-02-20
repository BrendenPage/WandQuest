/// @description Make a choice
// You can write your code in this editor

choice_type = clicked_choice.choice_type
ind = clicked_choice.choice_ind


// TODO: Actually add the attack to the deck
if (choice_type == CHOICE_TYPE.ATTACK) {
	show_debug_message("This is an attack")
	if(ind != 3 && ind != 4){// 3 = firebolt, 4 = flame brust
		show_debug_message("This spell has not been implemented yet")
	}else{
		var _chosen_attack_spell = ds_map_find_value(global.attack_spell_map, ind)
		array_push(oPlayer.attack_deck_obj.deck, _chosen_attack_spell)
		oPlayer.attack_deck_obj.cur_deck_size++
		oPlayer.attack_deck_obj.cur_deck_index = 0
		oPlayer.attack_deck_obj.deck = array_shuffle(oPlayer.attack_deck_obj.deck)
	}
} else if (choice_type == CHOICE_TYPE.SPECIAL) {
	show_debug_message("This is a special")
	if(ind !=5){// 5 = shield
		show_debug_message("This spell has not been implemented yet")
	}else{
		var _chosen_special_spell = ds_map_find_value(global.special_spell_map, ind)
		array_push(oPlayer.special_deck_obj.deck, _chosen_special_spell)
		oPlayer.special_deck_obj.cur_deck_size++
		oPlayer.special_deck_obj.cur_deck_index = 0
		oPlayer.special_deck_obj.deck = array_shuffle(oPlayer.special_deck_obj.deck)
	}
} else if (choice_type == CHOICE_TYPE.AUGMENT) {
	show_debug_message("This is an augment")
} else {
	show_debug_message("Unrecognized choice type")
}

show_debug_message("Index of this choice: " + string(ind))
global.game_paused = false

instance_destroy(self)