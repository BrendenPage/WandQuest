/// @description Insert description here
// You can write your code in this editor
global.game_paused = true
clicked_choice = undefined
choices = [undefined,undefined,undefined]

for(var _i = 0; _i<3; _i++) {
	choices[_i] = instance_create_depth(0,0,depth-1,oChoice)
	choices[_i].parent = self
}