/// @description Insert description here
// You can write your code in this editor
event_inherited()


duration = max(0,duration - 1)

if duration == 0{
	instance_destroy(self)
}