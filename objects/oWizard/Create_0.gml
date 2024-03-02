/// @description Insert description here
// You can write your code in this editor
#macro WIZARD_TELEPORT_BUFFER 250



// Inherit the parent event
event_inherited();

damage = 0
speed_ = 2

hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)

action_cd = 150
action_dur = 79

state_ctr = action_cd
state = wizard_cd