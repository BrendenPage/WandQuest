
function cast_special_spell(_special_spell, _aim_dir){
	switch(_special_spell.spell_index) {
		case  global.special_spell_struct.shield.spell_index:
			var _special_inst = instance_create_depth(x , y, depth-98, _special_spell.special_obj)
			break
		case global.special_spell_struct.blink.spell_index:
		
			var _dist = point_distance(global.game.player.x, global.game.player.y, mouse_x, mouse_y)
			var _x_offset = mouse_x - global.game.player.x
			var _y_offset = mouse_y - global.game.player.y
			
			if (_dist > MAX_BLINK_RANGE) {
				_x_offset = lengthdir_x(MAX_BLINK_RANGE, _aim_dir)
				_y_offset = lengthdir_y(MAX_BLINK_RANGE, _aim_dir)
			}

			while (place_meeting(x + _x_offset,y + _y_offset,[oWall, oEnemyParent]) ){
				if _x_offset < 0 { _x_offset++ } else { _x_offset-- }
				if _y_offset < 0 { _y_offset++ } else { _y_offset-- }
			}
			
			with(global.game.player) {
				_special_inst = instance_create_depth(x+_x_offset ,y+ _y_offset, depth-100, _special_spell.special_obj)
				x += _x_offset
				y += _y_offset
			}
			break
		case global.special_spell_struct.duck.spell_index:
			dist_from_center_to_wand_tip = (sprite_get_bbox_right(sPlayer)- sprite_get_xoffset(sPlayer)) 
				+ (sprite_get_bbox_right(sWand)- sprite_get_xoffset(sWand))
			
			_x_offset = lengthdir_x(dist_from_center_to_wand_tip , _aim_dir)
			_y_offset = lengthdir_y(dist_from_center_to_wand_tip , _aim_dir)
			
			var _projectile_inst = instance_create_depth(x +_x_offset , y +_y_offset, depth-100, _special_spell.special_obj)
			break
		default:
			if(DEBUG) {
				show_debug_message("Unknown special spell cast")
			}
	}

	if (global.logging) {
		var _data = {
			curr_time: time(),
			spell: _special_spell.spell_name
		}
		cap_logger_action_level(SPECIAL_SPELL_USED, json_stringify(_data))
	}

}