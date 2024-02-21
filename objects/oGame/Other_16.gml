/// @description Start tutorial

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

tutorial_setup=true

// If the room has been seen on this playthrough.
// Used to populate enemies
this_run_seen_room_set = ds_map_create()

special_types = ds_list_create()
ds_list_add(special_types,0)
ds_list_add(special_types,1)
ds_list_add(special_types,irandom(1))
ds_list_add(special_types,irandom(1))
ds_list_shuffle(special_types)


// Logging
global.enemies_killed = 0