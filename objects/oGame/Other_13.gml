/// @description Card/Augment Selection Menu

if (!global.tutorial_seen) {exit}
var _chest = instance_create_layer(room_width/2,room_height/2,"Instances",oChest)

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (ds_list_find_value(special_types, _current_room_type - 5)) {
	if (DEBUG) {
		show_debug_message("Card room entered")
	}
	_chest.card_selection = true
} else {
	if (DEBUG) {
		show_debug_message("Augment room entered")
	}
	_chest.card_selection = false
}
