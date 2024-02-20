/// @description Insert description here
// You can write your code in this editor

var _height = bbox_bottom - bbox_top
var _width = bbox_right - bbox_left

global.game_paused = true

quit_button = instance_create_depth(x,y+room_width/8,depth-1,oButtonTutorialEnd)
quit_button.owner = self
