/// Attack deck governs the cooldowns of the attack spells

// Macros
SHUFFLE_COOLDOWN = 90;

// metadata
deck_index = 0;
spell_cooldown = 0;
cooldown_modifier = 1;
shuffle_cooldown = 0;
passive_shuffle_mod = 0;

// initialize with two fireballs and a shield
deck[0] = oFireball;
deck[1] = oFireball;
sprite_index = object_get_sprite(deck[deck_index]);
show_debug_message(sprite_get_name(object_get_sprite(deck[deck_index])));