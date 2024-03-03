/// @description Make a choice
// You can write your code in this editor

choice_type = clicked_choice.choice_type
ind = clicked_choice.choice_ind


switch(choice_type) {
	case CHOICE_TYPE.ATTACK:
		if (DEBUG) {
			show_debug_message("This is an attack")
		}
		if(is_deck_full(true)){
			card_replace_menu_popup(true,ind)
		}else{
			add_card_to_deck(true,ind)
		}
		shuffle_deck(true)
		break

	case CHOICE_TYPE.SPECIAL:
		if (DEBUG) {
			show_debug_message("This is an special")
		}
		if(is_deck_full(false)){
			card_replace_menu_popup(false,ind)
		}else{
			add_card_to_deck(false,ind)
		}
		shuffle_deck(false)
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