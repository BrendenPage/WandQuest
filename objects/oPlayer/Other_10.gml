/// @description Set up the player
// You can write your code in this editor

SPEED = 4.5;
image_index = 0;
depth = -100
speed_modifier = 1;
speed_debuff = 1;
hurtbox = hurtbox_create(25,40,0,0,false)
hat = instance_create_layer(x + -25,y + -50,"Instances",oPlayerHat)
body = instance_create_layer(x + -25,y + -50,"Instances",oPlayerBody)
wand = instance_create_layer(x + -25,y + -50,"Instances",oWand)


hurtbox.persistent = true

invincible = false
i_frames = 20
remaining_i_frames = 0

max_health = 100
remaining_health = max_health

aim_dir = 0

// Attack deck initialization
homing = false
homing_strength = HOMING_START
attack_cooldown_modifier = 1
attack_deck_obj = global.game.attack_deck
attack_deck_obj.persistent = true
attack_spell = attack_deck_obj.deck[0]

// Special deck initialization
special_cooldown_modifier = 1
special_deck_obj = global.game.special_deck
special_deck_obj.persistent = true
special_spell = special_deck_obj.deck[0]

//Cooldown for attack, special, and shuffle
shuffle_modifier = 1
attack_timer = 0
AT_shuffle_timer = 0
AT_shuffling = false

special_timer = 0
SP_shuffle_timer = 0
SP_shuffling = false
special_duration_timer = 0

//length from the center of Player to the tip of the wand + spell offset
dist_from_center_to_wand_tip = 0

// Spell casting related 
is_triple_surge_active = false

menu_cooldown = 30




