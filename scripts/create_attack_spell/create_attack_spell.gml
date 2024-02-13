/**
 * Constructs an attack spell object.
 *
 * @param {sprite} _sprite - The sprite used to visually represent the spell. 
 *                           Defaults to sFireboltProjectile if not specified.
 * @param {object} _projectile_obj - The projectile object that the spell casts. 
 *                                  Defaults to oFireboltProjectile if not specified.
 * @param {number} _cooldown - The cooldown time in frames between spell casts. 
 *                             Defaults to 15 if not specified.
 * @param {number} _damage  - The damage of the spell.
 *							  Defaults to 10 if not specified.
 * @param {string} _description_text - The description text of the spell.
 *									   Defaults to "" if not specified.
 * @param {number} _offset_from_center - The offset in pixel from the origin of the sprite to the leftside of the collision mask
 *										 Defaults to 0 if not specified.
 */
function create_attack_spell(
	_sprite = sFireboltProjectile,
	_projectile_obj = oFireboltProjectile,
	_cooldown = 15,
	_damage = 10,
	_description_text = "",
	_offset_from_center = 0) constructor{
	
	sprite = _sprite;
	projectile_obj = _projectile_obj;
	cooldown = _cooldown;
	damage = _damage;
	description_text = _description_text;
	offset_from_center = _offset_from_center;
}


global.attack_spell_list = {
	firebolt : new create_attack_spell(
		sFireboltProjectile,
		oFireboltProjectile,
		15,
		10,
		"Firebolt. Long Range. Single Attack. Low Damage. Low Cooldown. ",
		20
	),
	
	flame_burst : new create_attack_spell(
		sFlameBrustProjectile,
		oFlameBrustProjectile,
		20,
		50,
		"Flame Burst. Short Range, AOE Attack. High Damage. Medium Cooldown.",
		40
	)
	
}