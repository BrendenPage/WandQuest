/// @description
// First x and y of player
#macro ROOM_START_X 250
#macro ROOM_START_Y 250
// Tile size
#macro TS 36
player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
gui = instance_create_layer(0,0, "Instances", oGUI)

show_debug_message("Hey")