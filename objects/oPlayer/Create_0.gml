SPEED = 10;
image_index = 0;
depth = -100
speed_modifier = 1;
global.game_paused = false // TODO: REMOVE

hurtbox = hurtbox_create(25,40,-15,-25,false)
hat = instance_create_layer(x + -25,y + -50,"Instances",oPlayerHat)
body = instance_create_layer(x + -25,y + -50,"Instances",oPlayerBody)
wand = instance_create_layer(x + -25,y + -50,"Instances",oWand)

hurtbox.persistent = true

invincible = false
i_frames = 20
remaining_i_frames = 0

max_health = 100
remaining_health = max_health

aim_dir = 0;

// Attack Projectile info

//Colddown for attack
//might need modification after deck rotation is implemented 
attack_timer = 0;
attack_cookdown = 15;

wand_len = 5 + (sprite_get_bbox_right(sPlayer))
	+ (sprite_get_bbox_right(sWand));//length from the center of Player to the tip of the wand + 5

