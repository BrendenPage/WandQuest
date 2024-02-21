/// @description Insert description here
// You can write your code in this editor

with (global.game.player) {
	die()
}
room_goto(Menu)

with (oEndMessage) {
	instance_destroy(self)
}

instance_destroy(self)