/// @description
// First x and y of player
#macro ROOM_START_X 250
#macro ROOM_START_Y 250
#macro WEST_WALL_TILE_TOP 38
#macro WEST_WALL_TILE_BOTTOM 36
#macro EAST_WALL_TILE_TOP 40
#macro EAST_WALL_TILE_BOTTOM 34
#macro NORTH_WALL_TILE_LEFT WEST_WALL_TILE_TOP
#macro NORTH_WALL_TILE_RIGHT EAST_WALL_TILE_TOP
#macro SOUTH_WALL_TILE_LEFT WEST_WALL_TILE_BOTTOM
#macro SOUTH_WALL_TILE_RIGHT EAST_WALL_TILE_BOTTOM
#macro SHADOW_TOP 68
#macro SHADOW_BOTTOM 76
#macro SHADOW_LEFT 64
#macro SHADOW_RIGHT 72
#macro TILE_CLEAR 0
#macro SHADOW_CLEAR 48
// Tile size
#macro TS 36

player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
//gui = instance_create_layer(0,0, "Instances", oGUI)

show_debug_message("Hey")