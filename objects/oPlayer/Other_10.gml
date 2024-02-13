/// @description Set up the player
// You can write your code in this editor

SPEED = 4;
image_index = 0;
depth = -100
speed_modifier = 1;
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

// Attack Projectile info

//Cooldown for attack
//might need modification after deck rotation is implemented 
attack_timer = 0

attack_spell = global.attack_spell_list.firebolt
//attack_spell = oPlayerAttackDeck.deck[0]

//length from the center of Player to the tip of the wand + spell offset
wand_len = (sprite_get_bbox_right(sPlayer)- sprite_get_xoffset(sPlayer)) 
	+ (sprite_get_bbox_right(sWand)- sprite_get_xoffset(sWand))
	+ attack_spell.offset_from_center;