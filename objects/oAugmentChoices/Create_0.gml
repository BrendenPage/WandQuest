/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

for (var _i = 0; _i < 3; _i++) {
	sprite = sAugments
	choice_ind = irandom_range(0,sprite_get_number(sprite) - 1)
	
	choices[_i].choice_ind = choice_ind
	choices[_i].choice_type = CHOICE_TYPE.AUGMENT
	
	choices[_i].sprite_index = sprite
	choices[_i].image_index = choice_ind
	choices[_i].x_offset = 200 * _i - 200
	
	// TODO: Set the choice explanation accordingly
	
	
}
