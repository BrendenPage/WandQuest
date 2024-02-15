/// @description Insert description here
// You can write your code in this editor
event_inherited()

hitbox = hitbox_create(50,50,0,0,true)
hurtbox = hurtbox_create(50,50,0,0,true)

state_ctr = GUN_TIMERS.GUN_IDLE
shot_ctr = GUN_TIMERS.GUN_SHOT_COOLDOWN

state = gun_idle
move_dir = 0
speed_ = 2
damage = 3
projectile_enemy = true
attack_distance = PROJECTILE_AGGRO
