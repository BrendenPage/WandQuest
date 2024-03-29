/**
 * Create Special Spell Constructor:
 * 
 * This constructor function creates instances of special spells with customizable properties.
 * Special spells may have unique effects or behaviors compared to regular special spells.
 * 
 * @param {string} _spell_name - The name of the special spell. 
 *																 Defaults to "Default Shield" if not specified.
 * @param {Number} _spell_index - The index of the special spell card.
 *															 Defaults to -1 if not specified.
 * @param {sprite} _sprite - The sprite used to visually represent the special spell. 
 *														Defaults to sShieldEffect if not specified.
 * @param {object} _special_obj - The object representing the special effect of the spell.
 *																					Defaults to oShieldEffect if not specified.
 * @param {Number} _cooldown - The cooldown time in frames between spell casts.
 *													Defaults to 120 if not specified.
 * @param {Number} _duration - The duration of the spell in frames if it has one.
														Defaults to 40 if not specified.
 * @param {string} _description_text - The description text of the special spell. 
 *																			    Defaults to an empty string if not specified.
 */

function create_special_spell(
	_spell_name = "Default Shield",
	_spell_index = -1,
	_sprite = sShieldEffect,
	_special_obj = oShieldEffect,
	_cooldown = 120,
	_duration = 40,
	_description_text = ""
)constructor{
	spell_name = _spell_name
	spell_index = _spell_index
	sprite = _sprite
	special_obj = _special_obj
	cooldown = _cooldown
	duration = _duration
	description_text = _description_text
}

/**
 * Global Special Spell Struct:
 * 
 * This object serves as a collection of special spells available in the game. 
 * Each spell is represented by a key-value pair, where the key is the name of the spell
 * and the value is an instance of the create_special_spell constructor function.
 * 
 * Usage:
 * You can access individual special spells by their keys, for example:
 * 
 * global.special_spell_struct.shield
 * 
 * These instances provide access to the properties and behavior of each special spell in the game.
 * 
 */
global.special_spell_struct = { 
	
		duck: new create_special_spell(
		"Duck",
		2,
		sDuckEffect,
		oDuckEffect,
		150,
		300,
		"A DUCK IS A DUCK.\n(Duckstraction)"
	),
	
	shield : new create_special_spell(
		"Shield",
		3,
		sShieldEffect,
		oShieldEffect,
		150,
		40,
		"Shield\n Block any damage for a short time,\n Medium cooldown"
	),
	
	blink: new create_special_spell(
		"Blink",
		4,
		sBlinkEffect,
		oBlinkEffect,
		150,
		10,
		"Blink\n Teleport forward for a short distance.\n Medium cooldown"
	),
	
	triple_surge: new create_special_spell(
		"Triple Surge",
		5,
		sSpecials,
		oTripleSurge,
		150,
		0,
		"Triple Surge\n Triple the next attack spell you cast.\n Medium cooldown"
	),
	
	gale_barrier: new create_special_spell(
		"Gale Barrier",
		6,
		sSingleTornado,
		oGaleBarrierEffect,
		150,
		150,
		"Gale Barrier\n Summons a wind wall to halt enemy advancement.\nWinds can be ignited by fire spells.\n Medium cooldown"
	)
	
}

/**
 * Global Special Spell Map:
 * 
 * This data structure stores instances of special spells, mapped to their respective spell indexes.
 *
 * Usage:
 * - Use ds_map_add to add special spell instances to the map, with the spell's index as the key.
 * - To access an special spell instance by its index, use ds_map_find_value with the desired index.
 * 
 * Example:
 * ```
 * // Add special spell instances to the map
 * ds_map_add(global.special_spell_map, 5, global.special_spell_struct.shield)
 * 
 * // Accessing an special spell instance by index
 * var spellIndex = 5
 * var spellInstance = ds_map_find_value(global.special_spell_map, spellIndex)
 */
global.special_spell_map = ds_map_create()

ds_map_add(special_spell_map, 
	special_spell_struct.duck.spell_index,
	special_spell_struct.duck)
ds_map_add(special_spell_map,
	special_spell_struct.shield.spell_index,
	special_spell_struct.shield)
ds_map_add(special_spell_map,
	special_spell_struct.blink.spell_index,
	special_spell_struct.blink)
ds_map_add(special_spell_map,
	special_spell_struct.triple_surge.spell_index,
	special_spell_struct.triple_surge)
ds_map_add(special_spell_map,
	special_spell_struct.gale_barrier.spell_index,
	special_spell_struct.gale_barrier)
