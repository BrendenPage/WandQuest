/// @description Start the game
// You can write your code in this editor

gui = instance_create_layer(0,0, "Instances", oGUI)
with(gui){
	// set up the gui
	event_user(0)
}

player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
with(player){
	// set up the player
	event_user(0)
}

// Used to track current room index into oMapGenerator.dependency_map
current_room_x = global.map_gen.map_size/2
current_room_y = global.map_gen.map_size/2
game_setup=true