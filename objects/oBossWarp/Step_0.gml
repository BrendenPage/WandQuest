/// @description Insert description here
// You can write your code in this editor

if (num_wings_cleared() == 4 and !activated) {
	activated = true
	visible = true
}

if (activated and place_meeting(x, y, global.game.player)) {
	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x = 5
	global.game.current_room_y = 5
	layer_set_target_room(target_room)
	room_goto(target_room);
}