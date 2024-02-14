/// @description Insert description here
// You can write your code in this editor
#macro SLIME_BOSS_SCALE 2

event_inherited()

image_xscale = SLIME_BOSS_SCALE
image_yscale = SLIME_BOSS_SCALE

hitbox = hitbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
hurtbox = hurtbox_create(box_x_size,box_y_size,box_x_start,box_y_start,true)
damage = 20

state_ctr = SLIME_BOSS_TIMERS.SLIME_BOSS_IDLE
state = slime_boss_idle

speed_ = 9
dash_dir = 0