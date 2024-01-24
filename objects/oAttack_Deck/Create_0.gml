/// Attack deck governs the cooldowns of the attack spells
event_inherited();
// Macros
SHUFFLE_COOLDOWN = 90;

// initialize with two fireballs and a shield
deck[0] = oFireball;
deck[1] = oFireball;
sprite_index = object_get_sprite(deck[deck_index]);
