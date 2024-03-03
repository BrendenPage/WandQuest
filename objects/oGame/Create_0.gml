/// @description
// First x and y of player
#macro ROOM_START_X room_width/2
#macro ROOM_START_Y room_height/2
#macro START_ROOM DStart
#macro TUTORIAL_START DTutorialMove
#macro MENU_ROOM Menu
#macro DEATH_ROOM Death
#macro DEBUG false
#macro BOX_VISIBLE false

// If we're doing AB testing
#macro AB_TESTING true

// categoryId
#macro RELEASE 1

// Enemy spawn
#macro BASE_SPAWN_RATE 0.02
#macro ENEMY_SPAWN_NEAR_PLAYER_THRESHOLD (room_width/3)
#macro SLIME_SCALE 0.7
#macro MAX_ENEMIES 5
#macro MIN_ENEMIES 2

// percentage healed after going through warp as integer (max health*heal percent)
#macro HEAL_PERCENT 0.25

// Spells
#macro MAX_BLINK_RANGE 500

// At what distance should a ranged enemy
// shift to shooting and moving erratically
#macro PROJECTILE_AGGRO 300
// Buffer on projectile_aggro for when an enemy
// can shoot
#macro ATTACK_RANGE_BUFFER 80

// Camera macros
#macro VIEWPORT_SCALE 1
#macro VIEWPORT_WIDTH (960*VIEWPORT_SCALE)
#macro VIEWPORT_HEIGHT (540*VIEWPORT_SCALE)
#macro CAMERA_SCALE_BROWSER 0.75
#macro CAMERA_SCALE_NATIVE 1.5
// Tile size
#macro TS 36

game_setup = false
tutorial_setup = false

augment_choices_seen = false
card_choices_seen = false
player = undefined
target = undefined
gui = undefined
current_room_x = undefined
current_room_y = undefined
this_run_seen_room_set = undefined
rooms_seen = 0
visible_minimap = undefined
minimap_width = 0
minimap_height = 0
minimap_seed_x = 0
minimap_seed_y = 0
floor_ = 1
attack_deck = undefined
global.paths_list = []
locked_doors = undefined
// ESWN
wings_cleared = undefined
