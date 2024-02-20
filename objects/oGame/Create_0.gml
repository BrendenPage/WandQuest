/// @description
// First x and y of player
#macro ROOM_START_X room_width/2
#macro ROOM_START_Y room_height/2
#macro START_ROOM DStart
#macro MENU_ROOM Menu
#macro DEATH_ROOM Death
#macro DEBUG true
#macro BOX_VISIBLE false

// Enemy spawn
#macro BASE_SPAWN_RATE 0.02
#macro ENEMY_SPAWN_NEAR_PLAYER_THRESHOLD 200
#macro SLIME_SCALE 0.7
#macro MAX_ENEMIES 5
#macro MIN_ENEMIES 2

// At what distance should a ranged enemy
// shift to shooting and moving erratically
#macro PROJECTILE_AGGRO 300
// Buffer on projectile_aggro for when an enemy
// can shoot
#macro ATTACK_RANGE_BUFFER 80

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
melee_enemies = [oSlime, oGoblinWarrior]
ranged_enemies = [oGun, oGoblinArcher, oRedGun]
melee_spawn_rates = [0.9, 0.1]
ranged_spawn_rates = [0.8, 0.15, 0.05]
wing_spawn_rate = [0.8, 1, 1.5, 2]
attack_deck = undefined
global.paths_list = []
locked_doors = undefined
// ESWN
wings_cleared = undefined
