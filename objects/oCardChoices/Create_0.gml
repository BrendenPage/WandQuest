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
	
	choices[_i].choice_ind = choice_ind
	
	choices[_i].sprite_index = sprite
	choices[_i].image_index = choice_ind
	choices[_i].x_offset = 200 * _i - 200
	

	if (if_attack == true){
		// TODO: remove placeholder after all cards are implemented
		if choice_ind != 3 && choice_ind != 4{
			choices[_i].choice_explanation = "Description Placeholder. "
		}else{
			var temp_spell = ds_map_find_value(global.attack_spell_map,choice_ind)
			choices[_i].choice_explanation = temp_spell.description_text
		}
	}else{
		choices[_i].choice_explanation = "Description Placeholder. "
	}

}