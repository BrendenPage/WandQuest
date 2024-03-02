/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

slimes = [instance_create_layer(x,y,layer,oSlime),
			instance_create_layer(x,y,layer,oSlime),
			instance_create_layer(x,y,layer,oSlime)]

for (var _i = 0; _i < 3; _i++) {
	with(slimes[_i]) {
		mag_dir_move_and_collide_wall_door(30,_i * 120)
	}
}

