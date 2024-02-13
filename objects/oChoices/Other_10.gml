/// @description Make a choice
// You can write your code in this editor

if_attack = clicked_choice.if_attack
ind = clicked_choice.choice_ind


// TODO: Actually add the attack to the deck
show_debug_message("Is this an attack: " + string(if_attack))
show_debug_message("Index of this choice: " + string(ind))
global.game_paused = false

instance_destroy(self)