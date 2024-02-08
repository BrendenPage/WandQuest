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

var _done = true

for (var _i = 0; _i < 4; _i++) {
	if (arm_length[_i] != 0) {
		alarm[0] = refresh
		_done = false
		break
	}
}

if (_done) {
	event_user(2)
}
