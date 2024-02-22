/// @description Insert description here
// You can write your code in this editor

event_inherited()

var _choices_types = [bool(1),random(1) < 0.1,random(1) < 1]
var _choices_types = array_shuffle(_choices_types)

for (var _i = 0; _i < 3; _i++) {
	if_attack = _choices_types[_i]
	if (if_attack) {
		sprite = sAttacks
		choices[_i].choice_type = CHOICE_TYPE.ATTACK
	} else {
		sprite = sSpecials
		choices[_i].choice_type = CHOICE_TYPE.SPECIAL
	}
	
	choice_ind = irandom_range(2,sprite_get_number(sprite) - 1)
	
	//temporary code that prevents unimplemented cards
	if(!if_attack){choice_ind = irandom_range(5,sprite_get_number(sprite) - 1)}
	////////////////////////////////////////////////
	
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