/// @description Make a choice
// You can write your code in this editor

choice_type = clicked_choice.choice_type
ind = clicked_choice.choice_ind


// TODO: Actually add the attack to the deck
if (choice_type == CHOICE_TYPE.ATTACK) {
	show_debug_message("This is an attack")
} else if (choice_type == CHOICE_TYPE.SPECIAL) {
	show_debug_message("This is a special")
} else if (choice_type == CHOICE_TYPE.AUGMENT) {
	show_debug_message("This is an augment")
} else {
	show_debug_message("Unrecognized choice type")
}

show_debug_message("Index of this choice: " + string(ind))
global.game_paused = false

instance_destroy(self)