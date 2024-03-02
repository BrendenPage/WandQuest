/// @description Insert description here
// You can write your code in this editor

event_inherited()

tutorial_lines = [
	"Cards chosen here will be added to their corresponding deck",
	"If a deck becomes filled, you will then choose a card to replace",
	"Pick One"
	]

var _choices_types = [bool(1),random(1) < 0.1,random(1) < 1]
var _choices_types = array_shuffle(_choices_types)

for (var _i = 0; _i < 3; _i++) {
	if_attack = _choices_types[_i]
	if(oPlayerAttackDeck.cur_deck_size == oPlayerAttackDeck.max_deck_size){if_attack = false}
	if(oPlayerSpecialDeck.cur_deck_size == oPlayerSpecialDeck.max_deck_size){if_attack = true}
	
	if (if_attack) {
		sprite = sAttacks
		choices[_i].choice_type = CHOICE_TYPE.ATTACK
	} else {
		sprite = sSpecials
		choices[_i].choice_type = CHOICE_TYPE.SPECIAL
	}
	
	choice_ind = irandom_range(2,sprite_get_number(sprite) - 1)
	
	choices[_i].choice_ind = choice_ind
	
	choices[_i].sprite_index = sprite
	choices[_i].image_index = choice_ind
	choices[_i].x_offset = 200 * _i - 200
	

	if (if_attack == true){
		var _temp_spell = ds_map_find_value(global.attack_spell_map,choice_ind)
		choices[_i].choice_explanation = _temp_spell.description_text
	}else{
		var _temp_spell = ds_map_find_value(global.special_spell_map,choice_ind)
		choices[_i].choice_explanation = _temp_spell.description_text
	}

}

if (!global.game.card_choices_seen) {
	// Tutorial Popup
	//var _tutorial = instance_create_layer(room_width/2,room_height/2, "Enemy", oTutorial)
	//_tutorial.lines = tutorial_lines
	global.game.card_choices_seen = true
}