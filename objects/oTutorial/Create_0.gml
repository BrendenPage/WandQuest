/// @description Insert description here
// You can write your code in this editor
image_xscale = display_get_gui_width()*2/5
image_yscale = display_get_gui_height()*2/5
x = display_get_gui_width()/2
y = display_get_gui_height()/2
global.game_paused = true
Text = ""
depth = 0
quit_button = instance_create_depth(x,y+display_get_gui_height()/4,depth-1,oButtonTutorialEnd)
quit_button.owner = self
