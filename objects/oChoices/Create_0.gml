/// @description Insert description here
// You can write your code in this editor
global.game_paused = true
clicked_choice = undefined
choices = [undefined,undefined,undefined]
tutorial_lines = ["", "", ""]
for(var _i = 0; _i<3; _i++) {
	choices[_i] = instance_create_depth(0,0,depth-1,oChoice)
	choices[_i].parent = self
}

confirm_button = instance_create_depth(0,0,depth-1,oButtonConfirmChoice)

highlights = [undefined,undefined,undefined]
for(var _i = 0; _i < 3; _i++) {
	highlights[_i] = instance_create_depth(0,0,depth-1,oHighlight)
	highlights[_i].parent = choices[_i]
	highlights[_i].image_xscale = 80
	highlights[_i].image_yscale = 80
	highlights[_i].image_alpha = 0
}

has_chosen = false
chosen_index = -1