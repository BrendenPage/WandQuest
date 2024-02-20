/// @description Insert description here
// You can write your code in this editor

event_inherited()

for (var _i = 0; _i < 3; _i++) {
	if_attack = bool(irandom(1))
	if (if_attack) {
		sprite = sAttacks
		choices[_i].choice_type = CHOICE_TYPE.ATTACK
	} else {
		sprite = sSpecials
		choices[_i].choice_type = CHOICE_TYPE.SPECIAL
	}
	
	choice_ind = irandom_range(2,sprite_get_number(sprite) - 1)
	
	//temporary code that prevent unimplemented cards
	if(!if_attack){choice_ind = 5}
	
	choices[_i].choice_ind = choice_ind
	
	choices[_i].sprite_index = sprite
	choices[_i].image_index = choice_ind
	choices[_i].x_offset = 200 * _i - 200
	

	if (if_attack == true){
			var _temp_spell = ds_map_find_value(global.attack_spell_map,choice_ind)
			choices[_i].choice_explanation = _temp_spell.description_text
	}else{
		
		/*
		// TODO: remove placeholder after all cards are implemented
		if choice_ind != 5 {
			choices[_i].choice_explanation = "Description Placeholder. "
		}else{
			var _temp_spell = ds_map_find_value(global.special_spell_map,choice_ind)
			choices[_i].choice_explanation = _temp_spell.description_text
		}
		*/
		
		// temporarily commented out the above code for demostration purposes
		var _temp_spell = ds_map_find_value(global.special_spell_map,5)
		choices[_i].choice_explanation = _temp_spell.description_text
	}

}