/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

damage = 3
speed_ = 0.5

move_dir = irandom(360)
state_ctr = GOBLIN_ARCHER_TIMERS.GOBLIN_ARCHER_IDLE
shot_ctr = GOBLIN_ARCHER_TIMERS.ARROW_COOLDOWN
state = goblin_archer_idle
attack_distance = PROJECTILE_AGGRO

hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
projectile_enemy = true