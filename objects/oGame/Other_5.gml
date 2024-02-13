/// @description Destroy all projectiles in a room when you exit

while(instance_number(oProjectileParent) > 0) {
	instance_destroy(instance_find(oProjectileParent, 0))
}




