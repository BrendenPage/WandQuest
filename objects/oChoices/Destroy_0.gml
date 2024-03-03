/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < 3; _i++) {
	instance_destroy(highlights[_i])
}

for (var _i = 0; _i < 3; _i++) {
	instance_destroy(choices[_i])
}

instance_destroy(confirm_button)


global.game_paused = false
