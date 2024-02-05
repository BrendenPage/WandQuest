// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function die(){
	room_goto(DEATH_ROOM)
	global.game_paused = true
	
	// Reset the player's stats to their original values
	remaining_health = max_health
}