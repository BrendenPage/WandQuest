/// @description Attempt to use a spell

if (!shuffle_cooldown && !spell_cooldown) {
	if(spell_cooldown != 0) {
		return
	}
	// do the deck modification and display the sprite large
	spell_cooldown += deck[deck_index].cooldown*cooldown_modifier;
	deck_index++;
	if (deck_index == array_length(deck)){
		shuffle_cooldown = SHUFFLE_COOLDOWN - passive_shuffle_mod*30;
		deck_index = 0;
		array_shuffle_ext(deck);
	}
}
