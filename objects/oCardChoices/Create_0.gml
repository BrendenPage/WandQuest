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
	
	// TODO: Set the choice explanation accordingly
	if choice_ind == 3{
		choices[_i].choice_explanation = global.attack_spell_struct.firebolt.description_text
	}else{
		choices[_i].choice_explanation = global.attack_spell_struct.flame_burst.description_text
	}
}