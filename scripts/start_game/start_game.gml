// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// @description Starts the game
function start_game(){
	room_goto(START_ROOM)
	global.game_paused = false
	global.current_room = StartRoom
	room_instance_add(START_ROOM,0,0,oGame)
}