/// @description Insert description here
// You can write your code in this editor
if (global.map_gen.done) {
	if (instance_number(oGame) == 0) {
		global.game = instance_create_layer(0,0,"Instances", oGame)
	}
}

if (instance_number(oGame) == 1) {
	button_text = "Play"
	ready = true
}