event_inherited()



// Check for a collision with any instance of oLinearProjectile
var _colliding_projectile = instance_place(x, y, oProjectileParent);

if (_colliding_projectile != noone && _colliding_projectile.attribute == "Fire" && cur_state == unignited_state){ 
	for (var _i = 0; _i < 5; _i++){
		instance_destroy(arr_tornado_obj[_i])
	}
	
	var _index = -2
	if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index = 2 }
	for (var _i = 0; _i < 5; _i++) {
		var _x_offset = lengthdir_x(total_offset * _index, dir)
		var _y_offset = lengthdir_y(total_offset * _index, dir)
		arr_tornado_obj[_i] = instance_create_depth(x + _x_offset, y + _y_offset, depth - 100, oSingleTornadoIgnited)
		arr_tornado_obj[_i].damage *= global.game.player.damage_modifier
		if((dir < 270 && dir > 180) || (dir < 0 && dir > -90)){ _index-- } else { _index++ }
	}
	
	cur_state = ignited_state
	instance_destroy(hitbox)
}


if (cur_state == unignited_state){
	// Check for a collision with any instance of oEnemyParent
	var _colliding_enemy = instance_place(x, y, oEnemyParent);

	if (_colliding_enemy != noone) { // Check if there is a collision
	    // Apply knockback to the specific colliding enemy instance
	    var temp_dir = point_direction(x, y, _colliding_enemy.x, _colliding_enemy.y);
	    _colliding_enemy.knockback_dir = temp_dir;
	    _colliding_enemy.knockback_frames = 15;
	    _colliding_enemy.knockback_spd = 5;
	}

	// Check for a collision with any instance of oLinearProjectile
	var _colliding_projectile = instance_place(x, y, oLinearProjectile);

	if (_colliding_projectile != noone && _colliding_projectile.hitbox.if_enemy == true){// Check if there is a collision and if it's enemy projectile
		instance_destroy(_colliding_projectile)
	}

}


