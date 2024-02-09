/// @description Insert description here
// You can write your code in this editor

if (global.game_paused) exit

with (oPlayer){
	draw_healthbar(other.gui_center - other.healthbar_length/2,45,
					other.gui_center + other.healthbar_length/2,20,
					remaining_health/max_health * 100,
					c_red,c_green,c_green,0,true,true)
}

draw_text(gui_center - 350,20,"Health:")

draw_sprite(sAttacks,3,attack_position,gui_bottom)
draw_sprite(sSpecials,3,special_position,gui_bottom)
