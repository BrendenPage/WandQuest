/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

frames_until_respawn = max(frames_until_respawn - 1,0)

if (frames_until_respawn == 0) {
	instance_destroy(self)
}