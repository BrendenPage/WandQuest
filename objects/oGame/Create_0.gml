/// @description
// First x and y of player
#macro ROOM_START_X room_width/2
#macro ROOM_START_Y room_height/2
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
#macro BASE_SPAWN_RATE 0.02
#macro ENEMY_SPAWN_NEAR_PLAYER_TILE_THRESHOLD 4
#macro SLIME_SCALE 0.7
#macro DOOR_LEFT 1
#macro DOOR_RIGHT 2
#macro DOOR_SPRITE_NUM 4
#macro WEST_DOOR_OFFSET (1 * DOOR_SPRITE_NUM)
#macro EAST_DOOR_OFFSET (2 * DOOR_SPRITE_NUM)
#macro SOUTH_DOOR_OFFSET (3 * DOOR_SPRITE_NUM)
#macro OPEN_DOOR_OFFSET 2

#macro PROJECTILE_AGGRO 300

// Camera macros
#macro VIEWPORT_SCALE 1
#macro VIEWPORT_WIDTH 960
#macro VIEWPORT_HEIGHT 540
// Tile size
#macro TS 36

game_setup = false

player = undefined
gui = undefined
current_room_x = undefined
current_room_y = undefined
this_run_seen_room_set = undefined
visible_minimap = undefined
minimap_width = 0
minimap_height = 0
minimap_seed_x = 0
minimap_seed_y = 0
enemy_list = [oSlime, oGun, oRedGun]
enemy_spawn_rates = [.8, .15, .05]
wing_spawn_rate_modifier = [1, 1, 1, 1]
attack_deck = undefined
global.paths_list = []
