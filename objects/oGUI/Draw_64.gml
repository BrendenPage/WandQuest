/// @description Insert description here
// You can write your code in this editor
#macro MINIMAP_OFFSET 40
#macro MINIMAP_ELEMENT_SIZE 15
//#macro MINIMAP_ELEMENT_SCALING (MINIMAP_ELEMENT_SIZE/sprite_get_width(sMinimapHome))
#macro MINIMAP_SIZE 140
if (global.game_paused) exit

gui_center = display_get_gui_width()/2
gui_middle = display_get_gui_height()/2
gui_bottom = display_get_gui_height() - 80

with (global.game.player){
	draw_healthbar(other.gui_center - other.healthbar_length/2,45,
					other.gui_center + other.healthbar_length/2,20,
					remaining_health/max_health * 100,
					c_red,c_green,c_green,0,true,true)
}

draw_text(gui_center - 350,20,"Health:")
draw_bounded_minimap()

//draw_sprite(sAttacks,3,attack_position,gui_bottom)
//draw_sprite(sSpecials,3,special_position,gui_bottom)