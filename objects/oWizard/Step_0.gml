/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if (remaining_health == 0) {
	exit
}

state_ctr = max(0,state_ctr - 1)

script_execute(state)
