/// @description Insert description here
// You can write your code in this editor

if (instance_number(oTutorial) != 0) {
	exit
}

draw_self()

var camera = view_camera[0]

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cHeight = camera_get_view_height(camera)

draw_text(x,y - cHeight * 2 / 7,"Choose One")

if(has_chosen == false){
	for(var _i = 0; _i < 3; _i++) {
		if (position_meeting(mouse_x,mouse_y,choices[_i])) {
			draw_text(x,y + cHeight * 2/7 -20, choices[_i].choice_explanation)
			highlights[_i].image_alpha = 0.4
		}else{
			highlights[_i].image_alpha = 0
		}
	}
}else{
	for(var _i = 0; _i < 3; _i++) {
		highlights[_i].image_alpha = 0
	}
	draw_text(x,y + cHeight * 2/7 -20, choices[chosen_index].choice_explanation)
	highlights[chosen_index].image_alpha = 1
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
