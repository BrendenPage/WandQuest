/// @description Insert description here
// You can write your code in this editor

tutorial_lines = [
	"",
	"Augments are permanent stat upgrades and effects!",
	""
	]

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
	
	choices[_i].choice_explanation = global.augments_description_list[choice_ind]
}

if (!global.game.augment_choices_seen) {
	// Tutorial Popup
	//var _tutorial = instance_create_layer(room_width/2,room_height/2, "Enemy", oTutorial)
	//_tutorial.lines = tutorial_lines
	global.game.augment_choices_seen = true
}
