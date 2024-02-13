
deck_index = 0
max_deck_size = 8
cur_deck_size = 2
cooldown_modifier = 1
shuffle_cooldown = 90

deck = array_create(max_deck_size);

// defualt attack deck contain 2 firbolts. 
// might change to different cards for testing purposes
array_push(deck, global.attack_spell_list.firebolt)
array_push(deck, global.attack_spell_list.flame_burst)












