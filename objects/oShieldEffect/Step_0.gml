/// @description Insert description here
// You can write your code in this editor
duration_timer = max(0,duration_timer - 1)

x = owner.x
y = owner.y

if duration_timer == 0 || remaining_health <= 0{
	owner.invincible = false
	owner.remaining_i_frames = 20
	instance_destroy(self)
}



