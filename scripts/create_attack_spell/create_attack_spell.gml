/**
 * Constructs an attack spell object.
 *
 * @param {string} _spell_name - The name of the spell
 *								 Defaults to "Default Firebolt" if not specified.
 * @param {Number} _spell_index - The index of the attack spell card. The index is align with the order of sAttacks
 *							   Defaults to -1 if not specified.
 * @param {sprite} _sprite - The sprite used to visually represent the spell. 
 *                           Defaults to sFireboltProjectile if not specified.
 * @param {object} _projectile_obj - The projectile object that the spell casts. 
 *                                  Defaults to oFireboltProjectile if not specified.
 * @param {Number} _cooldown - The cooldown time in frames between spell casts. 
 *                             Defaults to 15 if not specified.
 * @param {Number} _damage  - The damage of the spell.
 *							  Defaults to 10 if not specified.
 * @param {string} _description_text - The description text of the spell.
 *									   Defaults to "" if not specified.
 * @param {Number} _offset_from_center - The offset in pixel from the origin of the sprite to the leftside of the collision mask
 *										 Defaults to 0 if not specified.
 */
function create_attack_spell(
	_spell_name = "Default Firebolt",
	_spell_index = -1,
	_sprite = sFireboltProjectile,
	_projectile_obj = oFireboltProjectile,
	_cooldown = 15,
	_damage = 10,
	_description_text = "",
	_offset_from_center = 0) constructor{
		
	spell_name = _spell_name
	spell_index = _spell_index
	sprite = _sprite;
	projectile_obj = _projectile_obj;
	cooldown = _cooldown;
	damage = _damage;
	description_text = _description_text;
	offset_from_center = _offset_from_center;
}

/**
 * Global Attack Spell Struct:
 * 
 * This object serves as a collection of attack spells available in the game. 
 * Each spell is represented by a key-value pair, where the key is the name of the spell
 * and the value is an instance of the create_attack_spell constructor function.
 * 
 * The structure of each spell instance includes various properties such as the spell's name,
 * index, sprite, projectile object, cooldown, damage, description text, and offset from center.
 * 
 * Usage:
 * You can access individual spells by their keys, for example:
 * 
 * global.attack_spell_struct.firebolt
 * global.attack_spell_struct.flame_burst
 * 
 * These instances provide access to the properties and behavior of each spell in the game.
 */
global.attack_spell_struct ={
	
	blast: new create_attack_spell(
		"Blast",
		2,
		sBlastProjectile,
		oBlastProjectile,
		80,
		120,
		"Blast\n Unlimited Cast Range. AOE Attack. \nVery High Damage & Cooldown.",
		0
	),

	firebolt: new create_attack_spell(
		"Firebolt",
		3,
		sFireboltProjectile,
		oFireboltProjectile,
		20,
		25,
		"Firebolt \n Long Range. Single Attack.\n Low Damage. Low Cooldown. ",
		20
	),
	
	flame_burst: new create_attack_spell(
		"Flame Burst",
		4,
		sFlameBurstProjectile,
		oFlameBurstProjectile,
		30,
		80,
		"Flame Burst\n Short Range. AOE Attack.\n High Damage. Mediun-Low Cooldown.",
		40
	),
	
	lightning_bolt: new create_attack_spell(
		"Lightning Bolt",
		5,
		sLightningBoltProjectile,
		oLightningBoltProjectile,
		35,
		40,
		"Lightning Bolt\n Medium range. AOE attack\n Medium Damage & Cooldown",
		175
	),
	
	magic_missile: new create_attack_spell(
		"Magic Missile",
		6,
		sMagicMissileProjectile,
		oMagicMissileProjectile,
		30,
		15,
		"Magic Missile\n Long range. Shoot in 5 darts.\n Low damage per dart. Medium cooldown",
		0
	)
	
}

/**
 * Global Attack Spell Map:
 * 
 * This data structure stores instances of attack spells, mapped to their respective spell indexes.
 * 
 * Usage:
 * - Use ds_map_add to add attack spell instances to the map, with the spell's index as the key.
 * - To access an attack spell instance by its index, use ds_map_find_value with the desired index.
 * 
 * Example:
 * ```
 * // Add attack spell instances to the map
 * ds_map_add(global.attack_spell_map, 
 *			  attack_spell_struct.firebolt.spell_index,
 *			  global.attack_spell_struct.firebolt)
 * 
 * // Accessing an attack spell instance by index
 * var spellIndex = 3
 * var spellInstance = ds_map_find_value(global.attack_spell_map, spellIndex)
 */
global.attack_spell_map = ds_map_create()

ds_map_add(attack_spell_map,
	attack_spell_struct.blast.spell_index,
	attack_spell_struct.blast)
ds_map_add(attack_spell_map,
	attack_spell_struct.firebolt.spell_index,
	attack_spell_struct.firebolt)
ds_map_add(attack_spell_map,
	attack_spell_struct.flame_burst.spell_index,
	attack_spell_struct.flame_burst)
ds_map_add(attack_spell_map,
	attack_spell_struct.lightning_bolt.spell_index,
	attack_spell_struct.lightning_bolt)
ds_map_add(attack_spell_map,
	attack_spell_struct.magic_missile.spell_index,
	attack_spell_struct.magic_missile)

