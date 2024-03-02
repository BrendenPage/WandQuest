event_inherited()
duration = global.special_spell_struct.gale_barrier.duration
duration_timer = duration
cooldown = global.special_spell_struct.gale_barrier.cooldown

unignited_state = 1
ignited_state = 0

cur_state = unignited_state

arr_tornado_obj = []

total_offset = 20
dir = oPlayer.aim_dir - 90


var _index = -2
if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index = 2 }
for (var _i = 0; _i < 5; _i++) {
	var _x_offset = lengthdir_x(total_offset * _index, dir)
	var _y_offset = lengthdir_y(total_offset * _index, dir)
	arr_tornado_obj[_i] = instance_create_depth(x + _x_offset, y + _y_offset, depth - 100, oSingleTornado)
	if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index-- } else { _index++ }
}

image_angle = dir

visible = false
hitbox = hitbox_create(128, 48, 0, 0, false)
damage = 0




















