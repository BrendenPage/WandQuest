spell_duration = global.special_spell_struct.duck.duration
duration_timer = spell_duration
cooldown = global.special_spell_struct.duck.cooldown

hurtbox = hurtbox_create(60, 60, 0, 15, false)

global.game.target = self

remaining_health = 10000

dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)
spd = 5
















