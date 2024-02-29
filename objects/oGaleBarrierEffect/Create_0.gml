spell_duration = global.special_spell_struct.gale_barrier.duration
duration_timer = spell_duration
cooldown = global.special_spell_struct.gale_barrier.cooldown

arr_tornado_obj = []

total_offset = 20
dir = oPlayer.aim_dir -90

var _index = -2
if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index = 2 }
for (var _i = 0; _i < 5; _i++) {
	var _x_offset = lengthdir_x(total_offset * _index, dir)
	var _y_offset = lengthdir_y(total_offset * _index, dir)
	arr_tornado_obj[_i] = instance_create_depth(x + _x_offset, y + _y_offset, depth - 100, oSingleTornado)
	if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index-- } else { _index++ }
}

image_angle = dir

















