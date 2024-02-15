/// @description Insert description here
// You can write your code in this editor

player = global.game.player

if (place_meeting(x,y,player)) {
	instance_create_depth(0,0,-1000,oAugmentChoices)
	global.game_paused = true
	instance_destroy(self)
}
