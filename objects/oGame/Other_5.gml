/// @description Destroy all projectiles in a room when you exit

while(instance_number(oProjectileParent) > 0) {
	instance_destroy(instance_find(oProjectileParent, 0))
}

for (var _i = 0; _i < array_length(global.paths_list); _i++) {
	path_delete(global.paths_list[_i])
}

global.paths_list = []


