
spell_duration = global.special_spell_struct.shield.duration
duration_timer = spell_duration
cooldown = global.special_spell_struct.shield.cooldown

hurtbox = hurtbox_create(64, 64, 0, 0, false);

owner = oPlayer
owner.remaining_i_frames = 1000
owner.invincible = true
invincible = true

remaining_health = 1000


