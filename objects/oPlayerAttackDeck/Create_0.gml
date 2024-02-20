cur_deck_index = 0
max_deck_size = 8
cooldown_modifier = 1
shuffle_cooldown = 60

deck = array_create(0);

// defualt attack deck contains 2 firebolts. 

array_push(deck, global.attack_spell_struct.firebolt)
array_push(deck, global.attack_spell_struct.firebolt)

//array_push(deck, global.attack_spell_struct.blast)
//array_push(deck, global.attack_spell_struct.blast)

cur_deck_size = array_length(deck)


