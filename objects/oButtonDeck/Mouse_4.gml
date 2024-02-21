/// @description Insert description here
// You can write your code in this editor
event_inherited()


global.deck_menu.visible = not global.deck_menu.visible

for (var _i = 0; _i < 4; _i++) {
	for (var _j = 0; _j < 2; _j++) {
		global.attacks[_i,_j].visible = not global.attacks[_i,_j].visible
		global.specials[_i,_j].visible = not global.specials[_i,_j].visible
	}
}
