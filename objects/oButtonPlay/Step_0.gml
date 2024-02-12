/// @description Insert description here
// You can write your code in this editor
if (global.map_gen.done) {
	button_text = "Play"
	ready = true
	if (!created_game) {
		created_game = true
		global.game = instance_create_layer(0,0,"Instances", oGame)
	}
}

