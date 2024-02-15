/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < 4; _i++) {
	for (var _j = 0; _j < 2; _j++) {
		instance_destroy(attacks[_i,_j])
		instance_destroy(specials[_i,_j])
	}
}
