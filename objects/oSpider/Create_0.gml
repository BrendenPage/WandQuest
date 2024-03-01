/// @description Insert description here
// You can write your code in this editor
event_inherited()

damage = 10
speed_ = 3
standard_speed = 3
aggro_speed = 4.5


hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)

idle_wait_time = 45
dash_time = 45
aggro_shot_time = 40
state_ctr = idle_wait_time
attack_distance = PROJECTILE_AGGRO - 125

state = spider_idle_wait

