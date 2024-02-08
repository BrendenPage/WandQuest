/// @description Insert description here
// You can write your code in this editor

damage = 10
speed_ = 3

hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
dash_proximity = 225
idle_wait_time = 25
idle_move_time = 30
dash_windup_time = 15
active_dash_time = 45
stamina = 1.75
max_stamina = 1.75

state = slime_idle_wait
state_ctr = idle_wait_time

