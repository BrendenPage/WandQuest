/// @description Start the game
// You can write your code in this editor

global.tutorial_seen = true

if (not variable_global_exists("grid_map")) {
	global.grid_map = ds_map_create()
}

gui = instance_create_layer(0,0, "Instances", oGUI)
with(gui){
	// set up the gui
	event_user(0)
}


attack_deck = instance_create_layer(0,0,"Instances",oPlayerAttackDeck)
with(attack_deck){
	// set up the attack_deck
	event_user(0)
}

special_deck = instance_create_layer(0,0,"Instances",oPlayerSpecialDeck)
with(special_deck){
	// set up the special_deck
	event_user(0)
}

player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
with(player){
	// set up the player
	event_user(0)
}
target = player

// Used to track current room index into oMapGenerator.dependency_map
current_room_x = global.map_gen.map_size/2
current_room_y = global.map_gen.map_size/2
game_setup=true

// If the room has been seen on this playthrough.
// Used to populate enemies
this_run_seen_room_set = ds_map_create()
rooms_seen = 0

for (var _i = 0; _i < global.map_gen.map_size; _i++) {
	for (var _j = 0; _j < global.map_gen.map_size; _j++) {
		if (_i == global.map_gen.map_size/2 and _j == global.map_gen.map_size/2) {
			visible_minimap[_i, _j] = NORTH | EAST | SOUTH | WEST
		} else {
			visible_minimap[_i, _j] = 0
		}
	}
}

visible_width = 3
visible_height = 3
minimap_seed_x = global.map_gen.map_size/2-1
minimap_seed_y = global.map_gen.map_size/2-1

special_types = ds_list_create()
ds_list_add(special_types,0)
ds_list_add(special_types,1)
ds_list_add(special_types,irandom(1))
ds_list_add(special_types,irandom(1))
ds_list_shuffle(special_types)

// ESWN
wings_cleared = [false, false, false, false]

// Logging
global.enemies_killed = 0
