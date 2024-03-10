event_user(1)
instance_activate_all()
frame_delay = 2
if (!global.map_gen.done) { exit }

if (room==Pause){
	setup_deck_menu_objects()
	exit
}

if (room == Death or room == Menu) {
	exit
}

if (room == START_ROOM and floor_ == 2 and not global.second_floor_tutorial_seen) {
	global.second_floor_tutorial_seen = true
	var _floor_tutorial = instance_create_layer(0,0,"Instances",oSecondFloorTutorial)
}

// Initialize tutorialization
if (room == DTutorialAttack or room == DTutorialMove or room == DTutorialSpecial or room == DTutorialWeapons) {
	if (!tutorial_setup) {
		event_user(6)
	}
	event_user(1)
	
	if (!ds_map_find_value(this_run_seen_room_set,room)) {
		if (room == DTutorialAttack and instance_number(oEnemyParent) == 0) {
			var _slime= instance_create_layer(828, 288, "Tutorial", oSlime);
			_slime.remaining_health = 10
			_slime.max_health = 10
			_slime.damage = 5
			
			if (global.logging) {
				var _data = {
					curr_time: time(),
					tutorial: true
				}
				cap_logger_level_start(string(rooms_seen+ 1), json_stringify(_data))
			}
		}
		if (room == DTutorialSpecial and instance_number(oEnemyParent) == 0) {
			var _gun= instance_create_layer(828, 288, "Tutorial", oGun);
			_gun.remaining_health = 50
			_gun.max_health = 50
			
			if (global.logging) {
				var _data = {
					curr_time: time(),
					tutorial: true
				}
				cap_logger_level_start(string(rooms_seen+ 1), json_stringify(_data))
			}
		}
		if (room == DTutorialWeapons) {
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.lightning_bolt)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.flame_burst)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.magic_missile)
			array_push(player.attack_deck_obj.deck, global.attack_spell_struct.blast)
			player.attack_deck_obj.cur_deck_size = 6
			var _tutorial = instance_create_layer(room_width/2,room_height/2, "Instances", oWeaponTutorial)
			
			if (global.logging) {
				var _data = {
					curr_time: time(),
					tutorial: true
				}
				cap_logger_level_start(string(rooms_seen+ 1), json_stringify(_data))
			}

		}
		ds_map_add(this_run_seen_room_set,room, true)
		
		rooms_seen++
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
		while (instance_number(oBossWarp) > 0) {
			instance_destroy(instance_find(oBossWarp, 0))
		}
		var _boss_warp = instance_create_layer(432, 252, "Instances", oBossWarp)
		if (floor_ > 1) {
			_boss_warp.target_room = choose(DBoss2)
			_boss_warp.target_y = 1080/2
			_boss_warp.target_x = 1800/2
		}
		_boss_warp.target_room = choose(DBoss2)
		_boss_warp.target_y = 1080/2
		_boss_warp.target_x = 1800/2
	}
}

var _current_room_type = global.map_gen.map[current_room_x,current_room_y]

if (!ds_map_find_value(this_run_seen_room_set,room)) {
	if (global.logging) {
		var _data = {
			curr_time: time(),
			special_room: !is_current_room_normal(),
			floor: floor_,
			tutorial: false
		}
		cap_logger_level_end(string(rooms_seen), json_stringify(_data))
		cap_logger_level_start(string(rooms_seen+ 1), json_stringify(_data))
	}
	// Populate collisions, insert doors, update motion planning grids
	event_user(0)
	if (is_boss_room() or is_current_room_normal()) {
		event_user(4)
	} else if (_current_room_type >= 5 and _current_room_type <= 8) {
		// Set card selection room
		event_user(3)
	}
	while(instance_number(oPortal)) {
		instance_destroy(instance_find(oPortal, 0))
	}
	ds_map_add(this_run_seen_room_set, room, true)
	rooms_seen++
}


set_warp_points()
update_bounded_minimap()
clear_wing(get_room_wing_type(current_room_x, current_room_y))
