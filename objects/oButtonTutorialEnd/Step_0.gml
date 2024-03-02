/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_gui_x, mouse_gui_y, id)) {
	if (mouse_check_button_pressed(mb_left)) {
		global.game_paused = false
		instance_destroy(owner)
		instance_destroy(self)
	}
}


