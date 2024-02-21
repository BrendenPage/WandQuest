/// @description Restart game


instance_destroy(player)
instance_destroy(gui)


instance_destroy(attack_deck)
instance_destroy(special_deck)

ds_map_destroy(this_run_seen_room_set)
while(instance_number(oProjectileParent) > 0) {
	instance_destroy(instance_find(oProjectileParent, 0))
}
while(instance_number(oEnemyParent)) {
	instance_destroy(instance_find(oEnemyParent, 0))
}
/*for (var _i = 0; _i < array_length(global.paths_list); _i++) {
	path_delete(global.paths_list[_i])
}*/
global.paths_list = []
wings_cleared = [false, false, false, false]
game_setup = false
tutorial_setup = false
