/// @description Insert description here
// You can write your code in this editor
event_inherited()

if d_menu == undefined {
	d_menu = instance_create_layer(x+200,y-200,layer,oDeckMenu)
} else {
	instance_destroy(d_menu)
	d_menu = undefined
}

