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

healthbar_center = gui_center/3

with (global.game.player){
	draw_healthbar(other.healthbar_center - other.healthbar_length/2,35,
					other.healthbar_center + other.healthbar_length/2,20,
					remaining_health/max_health * 100,
					c_red,c_green,c_green,0,true,true)
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if (minimap_enabled) {
	draw_bounded_minimap()
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)

var _card_index = oPlayer.attack_deck_obj.deck[oPlayer.attack_deck_obj.cur_deck_index].spell_index
if(oPlayer.AT_shuffle_timer != 0){//shuffling
	_card_index = 1 //shuffle sprite
}

draw_sprite(sAttacks,_card_index,attack_position,gui_bottom)
//draw_sprite(sSpecials,3,special_position,gui_bottom)