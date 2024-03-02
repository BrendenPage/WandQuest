/// @description Insert description here
// You can write your code in this editor
draw_self()

var _height = display_get_gui_height()*2/3
var _width = display_get_gui_width()*2/3
var _sep = _height/6
x = display_get_gui_width()/2
y = display_get_gui_height()/2

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fTutorial)
draw_text_ext(x,y-_height/12,text, _sep, _width)
//draw_text(x,y-_height/6,lines[1])
//draw_text(x,y,lines[2])
draw_set_font(fStandard)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
