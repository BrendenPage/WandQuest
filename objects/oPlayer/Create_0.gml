SPEED = 10;
image_index = 0;
depth = -100
speed_modifier = 1;

hurtbox = hurtbox_create(50,80,-25,-50,false)
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
	
	firebolt_obj = oFireboltProjectile; 
	wand_len = 5 + (sprite_get_bbox_right(sPlayer))
		+ (sprite_get_bbox_right(sWand));//length from the center of Player to the tip of the wand + 5

