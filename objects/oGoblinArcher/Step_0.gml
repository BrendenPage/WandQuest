/// @description Insert description here
// You can write your code in this editor

event_inherited()
if (remaining_health == 0) {
	exit
}

state_ctr = max(0,state_ctr - 1)
shot_ctr = max(0,shot_ctr - 1)

script_execute(state)