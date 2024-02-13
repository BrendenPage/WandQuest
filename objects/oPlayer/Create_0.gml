global.game.player = self
SPEED = 4;
image_index = 0;
depth = -100
speed_modifier = 1;
global.game_paused = false // TODO: REMOVE
show_debug_message("HELP MEEE")
hurtbox = hurtbox_create(25,40,0,0,false)
hat = instance_create_layer(x + -25,y + -50,"Instances",oPlayerHat)
body = instance_create_layer(x + -25,y + -50,"Instances",oPlayerBody)
wand = instance_create_layer(x + -25,y + -50,"Instances",oWand)

invincible = undefined
i_frames = undefined
remaining_i_frames = undefined

max_health = undefined
remaining_health = undefined

aim_dir = undefined;

// Attack Projectile info
	
	//Colddown for attack
	//might need modification after deck rotation is implemented 
	attack_timer = 0;
	attack_spell = global.attack_spell_list.firebolt;
	
	//firebolt_obj = oFireboltProjectile; 
	wand_len = (sprite_get_bbox_right(sPlayer)- sprite_get_xoffset(sPlayer)) 
		+ (sprite_get_bbox_right(sWand)- sprite_get_xoffset(sWand));//length from the center of Player to the tip of the wand + 5

