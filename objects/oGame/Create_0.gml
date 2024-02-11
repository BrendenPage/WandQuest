/// @description
// First x and y of player
#macro ROOM_START_X 70
#macro ROOM_START_Y 360
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

// Camera macros
#macro VIEWPORT_WIDTH 960
#macro VIEWPORT_HEIGHT 540
// Tile size
#macro TS 36

player = instance_create_layer(ROOM_START_X, ROOM_START_Y, "Instances", oPlayer)
gui = instance_create_layer(0,0, "Instances", oGUI)
map_gen = instance_create_layer(0,0, "Instances", oMapGenerator)
// Used to track current room index into oMapGenerator.dependency_map
current_room_x = map_gen.map_size/2
current_room_y = map_gen.map_size/2

// Set up camera and viewport 0
view_enabled = true
view_visible[0] = true
view_set_xport(0, 0)
view_set_yport(0, 0)
view_wport[0] = VIEWPORT_WIDTH
view_hport[0] = VIEWPORT_HEIGHT
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, oPlayer, -1, -1, VIEWPORT_WIDTH/2, VIEWPORT_HEIGHT/2);
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, 960, 540);
surface_resize(application_surface, 960, 540);