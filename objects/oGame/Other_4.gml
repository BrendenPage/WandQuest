event_user(1)
if (room==Pause){
	setup_deck_menu_objects()
	exit
}

if (room == Death or room == Menu) {
	exit
}




if (room == DTutorialAttack or room == DTutorialMove or room == DTutorialSpecial or room == DTutorialWeapons) {
	if (!tutorial_setup) {
		event_user(6)
	}
	event_user(1)
	if (!ds_map_find_value(this_run_seen_room_set,room)) {
		if (room == DTutorialAttack) {
			var _slime= instance_create_layer(828, 288, "Tutorial", oSlime);
			_slime.remaining_health = 10
			_slime.max_health = 10
			_slime.damage = 5
		}
		if (room == DTutorialSpecial) {
			var _gun= instance_create_layer(828, 288, "Tutorial", oGun);
			_gun.remaining_health = 10
			_gun.max_health = 10
		}
		if (room == DTutorialMove) {
			var _tutorial = instance_create_layer(room_width/2,room_height/2, "Instances", oTutorial)
			_tutorial.image_xscale = room_width*2/5
			_tutorial.image_yscale = room_height*2/5
		}
		if (room == DTutorialWeapons) {
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.lightning_bolt)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.flame_burst)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.magic_missile)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.blast)
			player.attack_deck_obj.cur_deck_size = 6
			var _tutorial = instance_create_layer(room_width/2,room_height/2, "Instances", oWeaponTutorial)
			_tutorial.image_xscale = room_width*2/5
			_tutorial.image_yscale = room_height*2/5
		}
		ds_map_add(this_run_seen_room_set,room, true)
	}
	// Set collisions and exit
	event_user(0)
	exit
}

if (!game_setup and room==START_ROOM) {
	event_user(5)
	event_user(2)
} else if (room == START_ROOM) {
	if (num_wings_cleared() == 4) {
		instance_create_layer(432, 252, "Instances", oBossWarp)
	}
}

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (!ds_map_find_value(this_run_seen_room_set,room)) {
	if (global.logging) {
		var _data = {
			curr_time: time(),
			special_room: !is_current_room_normal()
		}
		cap_logger_level_end(string(ds_map_size(this_run_seen_room_set)), json_stringify(_data))
		cap_logger_level_start(string(ds_map_size(this_run_seen_room_set)+ 1), json_stringify(_data))
	}
	// Populate collisions, insert doors, update motion planning grids
	event_user(0)
	if (room == DBoss1 or is_current_room_normal()) {
		// insert enemies at random
		event_user(4)
	} else if (_current_room_type >= 5 and _current_room_type <= 8) {
		// Set card selection room
		event_user(3)
	}
	ds_map_add(this_run_seen_room_set, room, true)
}


set_warp_points()
update_bounded_minimap()
clear_wing(get_room_wing_type(current_room_x, current_room_y))

event_user(1)