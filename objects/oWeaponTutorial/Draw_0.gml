/// @description Insert description here
// You can write your code in this editor

draw_self()

var _height = bbox_bottom - bbox_top
var _width = bbox_right - bbox_left

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y-_height/3,"Your spells are shuffled in a random order!")
draw_text(x,y-_height/6,"When your spells run out, you have to reshuffle the order (this takes time)")
draw_text(x,y,"Enter the pause menu (P or esc) to view your new deck! I've added some extra ;)")

draw_set_halign(fa_left)
draw_set_valign(fa_top)