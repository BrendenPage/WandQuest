/// @description Card/Augment Selection Menu
// You can write your code in this editor
if (!global.tutorial_seen) {exit}
chest = instance_create_layer(room_width/2,room_height/2,"Instances",oChest)

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (ds_list_find_value(special_types,_current_room_type - 5) == 0) {
	chest.if_card = true
} else {
	chest.if_card = false
}
