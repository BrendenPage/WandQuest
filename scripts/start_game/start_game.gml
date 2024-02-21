// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @description Starts the game
function start_game(){
	global.start_time = time()
	room_goto(START_ROOM)
	layer_set_target_room(START_ROOM)
	global.game_paused = false
	global.current_room = START_ROOM
	create_deck_menu_objects()
	
}

// Return epoch time in milliseconds
function time() {
	return date_second_span(date_create_datetime(1970,1,1,0,0,0),date_current_datetime())*1000
}
