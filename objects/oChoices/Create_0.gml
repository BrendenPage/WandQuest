/// @description Insert description here
// You can write your code in this editor

clicked_choice = undefined
choices = [undefined,undefined,undefined]

for(i = 0; i<3; i++) {
	choices[i] = instance_create_depth(0,0,depth-1,oChoice)
	choices[i].parent = self
	
	if_attack = bool(irandom(1))
	if (if_attack) {
		sprite = sAttacks
	} else {
		sprite = sSpecials
	}
	//choice_ind = irandom_range(2,sprite_get_number(sprite) - 1)
	choice_ind = irandom_range(3,4)
	
	choices[i].if_attack = if_attack
	choices[i].choice_ind = choice_ind
	
	choices[i].sprite_index = sprite
	choices[i].image_index = choice_ind
	choices[i].x_offset = 200 * i - 200
	
	// TODO: Set the choice explanation accordingly
	if choice_ind == 3{
		choices[i].choice_explanation = global.attack_spell_list.firebolt.description_text
	}else{
		choices[i].choice_explanation = global.attack_spell_list.flame_burst.description_text
	}
	
}