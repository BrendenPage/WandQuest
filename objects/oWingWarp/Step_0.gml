/// @description Insert description here
// You can write your code in this editor

if (execute) {
	layer_set_target_room(target_room)
	room_goto(target_room)
	execute = false
	exit
}

if (activated and !variable_global_exists("first_wing_cleared")) {
	global.first_wing_cleared = true
	
}

if (!place_meeting(x, y, global.game.player) and instance_number(oEnemyParent) == 0) {
	activated = true
	visible = true
	if (!first_use) {
		first_use = true
		global.game.player.remaining_health = min(global.game.player.remaining_health + global.game.player.max_health*HEAL_PERCENT, global.game.player.max_health)
	}
}

if (activated and place_meeting(x, y, global.game.player)) {
	// Clean up room
	
	clear_instances()

	global.current_room = target_room
	global.game.player.x = target_x
	global.game.player.y = target_y
	global.game.current_room_x = 5
	global.game.current_room_y = 5
	
	with(global.game) {
		event_user(8)
	}
	execute = true
}
