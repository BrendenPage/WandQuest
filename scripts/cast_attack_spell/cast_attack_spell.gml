/**
 * Cast Attack Spell:
 * This function is responsible for generate attack projectiles based on the provided parameters _attack_spell.
 * This function provides a flexible way to cast different types of attack spells in the game.
 
 * @param {object} _attack_spell - The attack spell object to cast.
 * @param {real} _aim_dir - The direction in which the spell is aimed.
 *												Typically where mouse is pointing to.
 * 
 * Usage:
 * Call this function in oPlayer to cast attack spells in the game.
 */
function cast_attack_spell(_attack_spell, _aim_dir){
	if(_attack_spell.spell_index == global.attack_spell_struct.magic_missile.spell_index){//magic missile
		for (i = 0; i < 5; i++) {
			var _temp_dir = _aim_dir + random_range(-5,5)
			_temp_dir = (_temp_dir + 72 * (i)) % 360
			var _total_offset = 30
			var _x_offset = lengthdir_x(_total_offset, _temp_dir);
			var _y_offset = lengthdir_y(_total_offset, _temp_dir);
			var _projectile_inst = instance_create_depth(x +_x_offset , y +_y_offset, depth-100, _attack_spell.projectile_obj)
			with(_projectile_inst){	 dir  = point_direction(x,y,mouse_x,mouse_y)	 }
		}

	}else if(_attack_spell.spell_index == global.attack_spell_struct.blast.spell_index){// blast
		var _projectile_inst = instance_create_depth(mouse_x, mouse_y, depth-100, _attack_spell.projectile_obj)
		with(_projectile_inst){	 dir  = 0	 }
	}else{// everything else
		 //length from the center of Player to the tip of the wand + spell offset
		dist_from_center_to_wand_tip = (sprite_get_bbox_right(sPlayer)- sprite_get_xoffset(sPlayer)) 
			+ (sprite_get_bbox_right(sWand)- sprite_get_xoffset(sWand))
			+ _attack_spell.offset_from_center;

		//create the projectile
		var _x_offset = lengthdir_x(dist_from_center_to_wand_tip , _aim_dir)
		var _y_offset = lengthdir_y(dist_from_center_to_wand_tip , _aim_dir)

	    var _projectile_inst = instance_create_depth(x +_x_offset , y +_y_offset, depth-100, _attack_spell.projectile_obj)

	    // change the bullet's direction
		with(_projectile_inst){	 dir  = _aim_dir	 }
		
	}
	
	if (global.logging) {
		var _data = {
			curr_time: time(),
			spell: _attack_spell.spell_name
		}
		cap_logger_action_level(ATTACK_SPELL_USED, json_stringify(_data))
	}
}
