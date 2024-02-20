/// @description Insert description here
// You can write your code in this editor

draw_self()

var _height = bbox_bottom - bbox_top
var _width = bbox_right - bbox_left

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y-_height/3,"Welcome to WandQuest!")
draw_text(x,y-_height/6,"You're a wizard whose spells are drawn randomly from a pair of decks.")
draw_text(x,y,"The next spells in each deck are shown in the bottom left.")

draw_set_halign(fa_left)
draw_set_valign(fa_top)