/// @function hurtbox_create
/// @description Makes a hurtbox for another object.
/// @param _x_scl The x dimension of the hurtbox
/// @param _y_scl The y dimension of the hurtbox
/// @param _x_offset The x offset between the hitbox's top right corner and its owner's center.
/// @param _y_offset The y offset between the hitbox's top right corner and its owner's center.
/// @param _if_enemy false if this is the player's hurtbox, true if it's an enemy's
/// @returns the hurtbox
function hurtbox_create(_x_scl, _y_scl, _x_offset, _y_offset, _if_enemy){
	var _hurtbox = instance_create_layer(x + _x_offset,y + _y_offset,"DamageBoxes",oHurtbox)
	_hurtbox.image_xscale = _x_scl/2
	_hurtbox.image_yscale = _y_scl/2
	_hurtbox.x_offset = _x_offset
	_hurtbox.y_offset = _y_offset
	_hurtbox.if_enemy = _if_enemy
	_hurtbox.owner = id
	
	return _hurtbox
}

/// @function hitbox_create
/// @description Makes a hitbox for another object.
/// @param _x_scl The x dimension of the hitbox
/// @param _y_scl The y dimension of the hitbox
/// @param _x_offset The x offset between the hitbox's top right corner and its owner's center.
/// @param _y_offset The y offset between the hitbox's top right corner and its owner's center.
/// @param _if_enemy false if this is the player's hitbox, true if it's an enemy's
/// @returns the hitbox
function hitbox_create(_x_scl, _y_scl, _x_offset, _y_offset, _if_enemy){
	var _hitbox = instance_create_layer(x + _x_offset,y + _y_offset,"DamageBoxes",oHitbox)
	_hitbox.image_xscale = _x_scl/2
	_hitbox.image_yscale = _y_scl/2
	_hitbox.x_offset = _x_offset
	_hitbox.y_offset = _y_offset
	_hitbox.if_enemy = _if_enemy
	_hitbox.owner = id
	
	return _hitbox
}