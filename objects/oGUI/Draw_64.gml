/// @description Insert description here
// You can write your code in this editor
#macro MINIMAP_OFFSET 40
#macro MINIMAP_ELEMENT_SIZE 15

#macro REFRESH_OPACITY 0.7
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

if (minimap_enabled and global.tutorial_seen) {
	draw_bounded_minimap()
	draw_text(display_get_gui_width() * 8.9 / 10, display_get_gui_height() / 20,"Floor: " + string(global.game.floor_))
}

var _attack_card_index = oPlayer.attack_deck_obj.deck[oPlayer.attack_deck_obj.cur_deck_index].spell_index

if(oPlayer.AT_shuffle_timer != 0){//shuffling
	_attack_card_index = 1 //shuffle sprite
}
draw_sprite(sAttacks,_attack_card_index,attack_position,gui_bottom)
var _remaining_cooldown = 0
if(oPlayer.attack_timer != 0 or oPlayer.AT_shuffle_timer != 0) {
	if (!refreshing_attacks) {
		refreshing_attacks = true
		if (oPlayer.AT_shuffling) {
			attack_refresh_init = oPlayer.AT_shuffle_timer
			at_shuffling = true
		} else {
			attack_refresh_init = oPlayer.attack_timer
		}
	}
	if (at_shuffling) {
		_remaining_cooldown = oPlayer.AT_shuffle_timer
		show_debug_message("init: " + string(attack_refresh_init))
		show_debug_message("rema: " + string(_remaining_cooldown))
		show_debug_message("calc: " + string(floor(((attack_refresh_init-_remaining_cooldown)/attack_refresh_init)*48)))
	} else {
		_remaining_cooldown = oPlayer.attack_timer
	}
	draw_sprite_ext(sLoading,floor(((attack_refresh_init-_remaining_cooldown)/attack_refresh_init)*48),
					attack_position,gui_bottom, sprite_get_width(sAttacks)/sprite_get_width(sLoading),
					sprite_get_height(sAttacks)/sprite_get_height(sLoading), 0, c_white, REFRESH_OPACITY)
} else {
	refreshing_attacks = false
	at_shuffling = false
}




var _special_card_index = oPlayer.special_deck_obj.deck[oPlayer.special_deck_obj.cur_deck_index].spell_index
if(oPlayer.SP_shuffle_timer != 0) {//shuffling
	_special_card_index = 1 //shuffle sprite
}

draw_sprite(sSpecials,_special_card_index,special_position,gui_bottom)

if(oPlayer.special_timer != 0 or oPlayer.SP_shuffle_timer != 0) {
	if (!refreshing_specials) {
		refreshing_specials = true
		if (oPlayer.SP_shuffling) {
			special_refresh_init = oPlayer.SP_shuffle_timer
		} else {
			special_refresh_init = oPlayer.special_timer
		}
	}
	if (oPlayer.SP_shuffling) {
		_remaining_cooldown = oPlayer.SP_shuffle_timer
	} else {
		_remaining_cooldown = oPlayer.special_timer
	}
	draw_sprite_ext(sLoading,floor(((special_refresh_init-_remaining_cooldown)/special_refresh_init)*48),
					special_position,gui_bottom, sprite_get_width(sSpecials)/sprite_get_width(sLoading),
					sprite_get_height(sSpecials)/sprite_get_height(sLoading), 0, c_white, REFRESH_OPACITY)
} else {
	refreshing_specials = false
}




draw_set_font(fDeath)


if (death_message_alpha > 0) {
	draw_text_ext_color(gui_center,gui_middle/2,"You died",0,1000,c_red,c_red,c_red,c_red,death_message_alpha)
	death_message_alpha = max(0,death_message_alpha - 0.005)
}

draw_set_font(fStandard)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
