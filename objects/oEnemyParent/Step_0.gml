/// @description Insert description here
// You can write your code in this editor

if (remaining_health == 0){
	instance_destroy()
	set_warp_points()
}

remaining_i_frames = max(0,remaining_i_frames - 1)
if (remaining_i_frames == 0) {
	invincible = false
}