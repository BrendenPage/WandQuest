// @description Used to process the death of the player. Moves to the death screen, pauses the game, and resets the player's progress
function die(){
	room_goto(DEATH_ROOM)
	global.game_paused = true
	
	// Reset the player's stats to their original values
	remaining_health = max_health
	with(global.game){
		event_user(5)
	}
	show_debug_message("Dead")
}
