
cur_deck_index = 0
max_deck_size = 8
cooldown_modifier = 1
shuffle_cooldown = 60

deck = array_create(0);

// defualt special deck contain 2 shields. 
// might change to different cards for testing purposes

array_push(deck, global.special_spell_struct.blink)
array_push(deck, global.special_spell_struct.blink)

//array_push(deck, global.special_spell_struct.duck)
//array_push(deck, global.special_spell_struct.duck)

cur_deck_size = array_length(deck)



