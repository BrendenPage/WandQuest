/// @description Insert description here
// You can write your code in this editor

draw_self()

var camera = view_camera[0]

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cHeight = camera_get_view_height(camera)

draw_text(x,y - cHeight * 2 / 7,"Choose One")

for(i = 0; i < 3; i++) {
	if (position_meeting(mouse_x,mouse_y,choices[i])) {
		draw_text(x,y + cHeight * 2/7, choices[i].choice_explanation)
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
