/// @description Start the game
// You can write your code in this editor


show_debug_message("oGame Create Event")

global.game = self
player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
gui = instance_create_layer(0,0, "Instances", oGUI)
// Used to track current room index into oMapGenerator.dependency_map
current_room_x = global.map_gen.map_size/2
current_room_y = global.map_gen.map_size/2
game_setup=true