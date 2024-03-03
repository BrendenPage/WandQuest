/// @description Set up the GUI
// You can write your code in this editor

attack_position = display_get_gui_width()/18
special_position = display_get_gui_width()*3/18


healthbar_length = 150
healthbar_height = 30

death_message_alpha = 0
if (global.died) {
	death_message_alpha = 1
}

