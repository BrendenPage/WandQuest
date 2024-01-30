/// @description Trigger extend event on each arm

to_check_arm_index = 0 
if (arm_length[to_check_arm_index] > 0) {
	event_user(0)
}

to_check_arm_index = 1
if (arm_length[to_check_arm_index] > 0) {
	event_user(0)
}

to_check_arm_index = 2 
if (arm_length[to_check_arm_index] > 0) {
	event_user(0)
}

to_check_arm_index = 3 
if (arm_length[to_check_arm_index] > 0) {
	event_user(0)
}

if (total_rooms > 0) {
	alarm[0] = refresh
}
