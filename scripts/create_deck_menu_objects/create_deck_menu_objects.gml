// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_deck_menu_objects(){
	var _width = 500
	var _height = 464
	for (var _i = 0; _i < 4; _i++) {
		for (var _j = 0; _j < 2; _j++) {
			global.attacks[_i,_j] = room_instance_add(Pause,400 + _width * (_i + 1) / 10,25 + 2 * _height / 7 + _j * _height / 4,oDeckMenuChoice)
			global.specials[_i,_j] = room_instance_add(Pause,400 + _width * (_i + 1) / 10 + _width / 2,25 + 2 * _height / 7 + _j * _height / 4,oDeckMenuChoice)
		}
	}
	
	global.deck_menu = room_instance_add(Pause,400,25,oDeckMenu)
}