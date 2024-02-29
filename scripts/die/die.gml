// @description Used to process the death of the player. Moves to the death screen, pauses the game, and resets the player's progress
function die(){
	if (global.logging) {
		var _data = {
			curr_time: time(),
			attack_spell_count: global.game.player.attack_deck_obj.cur_deck_size,
			special_spell_count: global.game.player.special_deck_obj.cur_deck_size,
			wings_cleared: num_wings_cleared(),
			rooms_cleared: ds_map_size(global.game.this_run_seen_room_set),
			enemies_killed: global.enemies_killed
		}
		if (room == Pause or (room == DBoss1 and instance_number(oEnemyParent) == 0)){
			cap_logger_action_level(PLAYER_RESTART, json_stringify(_data))
		} else {
			cap_logger_action_level(PLAYER_DEATH, json_stringify(_data))
		}
	}
	with(global.game) {
		event_user(5)
	}
	with(global.map_gen) {
		event_user(1)
	}
	global.game_paused = true
	
	// Reset the player's stats to their original values
	remaining_health = max_health
	if (DEBUG) {
		show_debug_message("Dead")
	}
	global.died = true
	
	start_game()
}
