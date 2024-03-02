/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

damage = 10
speed_ = 1.5

hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)

idle_move_dir = 0
idle_time = 75
move_time = 60

state = ooze_idle
state_ctr = idle_time

puddle_wait = 20
puddle_ctr = 0