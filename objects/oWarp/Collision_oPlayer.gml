
// Warp should only work if the player has killed all enemies
if (instance_number(oEnemyParent) == 0) {
	room_goto(target_room);
	layer_set_target_room(target_room)
	global.current_room = target_room


	oPlayer.x = target_x;
	oPlayer.y = target_y;
}