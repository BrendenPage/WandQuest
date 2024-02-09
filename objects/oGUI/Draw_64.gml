/// @description Insert description here
// You can write your code in this editor

if (global.game_paused) exit

with (oPlayer){
	var healthbar_length = 500
	var healthbar_height = 30
	var healthbar_center = display_get_gui_width()/2

	draw_healthbar(healthbar_center - healthbar_length/2,45,
					healthbar_center + healthbar_length/2,20,
					remaining_health/max_health * 100,
					c_red,c_green,c_green,0,true,true)
	draw_text(healthbar_center - 350,20,"Health:")
}
