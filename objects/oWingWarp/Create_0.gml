// Just in case
target_x = room_width/2
target_y = room_height/2
target_room = DStart
activated = false
first_use = false

visible = false
// Set the x, y coordinates
switch (get_room_wing_type(global.game.current_room_x, global.game.current_room_y)) {
	case 0: // East
	target_x = ds_map_find_value(global.map_gen.room_sizes, target_room)[0] - TS*2
	target_y = ds_map_find_value(global.map_gen.room_sizes, target_room)[1]/2
	break

	case 1: // South
	target_x = ds_map_find_value(global.map_gen.room_sizes, target_room)[0]/2
	target_y = ds_map_find_value(global.map_gen.room_sizes, target_room)[1] - TS*2
	break
	
	case 2: // West
	target_x = TS*2
	target_y = ds_map_find_value(global.map_gen.room_sizes, target_room)[1]/2
	break

	case 3: // North
	target_x = ds_map_find_value(global.map_gen.room_sizes, target_room)[0]/2
	target_y = TS*2
	break
}
