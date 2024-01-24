/// @description Decrease cooldowns + manage sprites
// You can write your code in this editor
var spell = false;
var shuffle = false;
if (shuffle_cooldown) {
	shuffle_cooldown--;
	shuffle = true;
}
if (spell_cooldown) {
	spell_cooldown--;
	spell = true;
}
if(shuffle) {
	sprite_index = asset_get_index("sShuffle");
} else if (spell) {
	sprite_index = asset_get_index("sRefresh");
} else {
	sprite_index = object_get_sprite(deck[deck_index]);
}
