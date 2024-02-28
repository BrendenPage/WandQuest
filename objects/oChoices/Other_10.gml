/// @description Make a choice
// You can write your code in this editor

choice_type = clicked_choice.choice_type
ind = clicked_choice.choice_ind


switch(choice_type) {
	case CHOICE_TYPE.ATTACK:
		if (DEBUG) {
			show_debug_message("This is an attack")
		}
		var _chosen_attack_spell = ds_map_find_value(global.attack_spell_map, ind)
		array_push(oPlayer.attack_deck_obj.deck, _chosen_attack_spell)
		oPlayer.attack_deck_obj.cur_deck_size++
		oPlayer.attack_deck_obj.cur_deck_index = oPlayer.attack_deck_obj.cur_deck_size
		oPlayer.attack_deck_obj.deck = array_shuffle(oPlayer.attack_deck_obj.deck)
		break

	case CHOICE_TYPE.SPECIAL:
		show_debug_message("This is a special")
		if(ind < 4 || ind > 7 ){// 4 = duck, 5 = shield, 6 = blink , 7 = Triple Surge
			show_debug_message("This spell has not been implemented yet")
		}else{
			var _chosen_special_spell = ds_map_find_value(global.special_spell_map, ind)
			array_push(oPlayer.special_deck_obj.deck, _chosen_special_spell)
			oPlayer.special_deck_obj.cur_deck_size++
			oPlayer.special_deck_obj.cur_deck_index = oPlayer.special_deck_obj.cur_deck_size
			oPlayer.special_deck_obj.deck = array_shuffle(oPlayer.special_deck_obj.deck)
		}
		break

	case CHOICE_TYPE.AUGMENT:
		if(DEBUG) {
			show_debug_message("Augment chosen oChoices")
		}
		augment(ind)
		break

	default:
		if (DEBUG) {
			show_debug_message("Unknown choice type chosen")
		}
}

if (DEBUG) {
	show_debug_message("Index of this choice: " + string(ind))
}

global.game_paused = false

instance_destroy(self)