// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @description Starts the game
function start_game(){
	room_goto(START_ROOM)
	layer_set_target_room(START_ROOM)
	show_debug_message("Hello")
	show_debug_message("Number of games: " + string(instance_number(oGame)))
	instance_create_layer(0,0,"Instances", oGame)
	show_debug_message("Number of games: " + string(instance_number(oGame)))
	global.game_paused = false
	global.current_room = START_ROOM
}
