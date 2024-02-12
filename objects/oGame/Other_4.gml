if (room==Pause){
	exit
}

if (!game_setup and room==START_ROOM) {
	show_debug_message("Called!")
	event_user(2)
}

event_user(0)
event_user(1)