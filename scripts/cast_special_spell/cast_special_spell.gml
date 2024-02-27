
function cast_special_spell(_special_spell, _aim_dir){
	
		if(_special_spell.spell_index == global.special_spell_struct.shield.spell_index){//Shield
			
			var _special_inst = instance_create_depth(x , y, depth-100, _special_spell.special_obj)
			
		}else if(_special_spell.spell_index == global.special_spell_struct.blink.spell_index){//Blink
			
			var _max_travel_dist = 150

			var _x_offset = lengthdir_x(_max_travel_dist, _aim_dir)
			var _y_offset = lengthdir_y(_max_travel_dist, _aim_dir)
			
			while (place_meeting(x + _x_offset,y + _y_offset,oWall) ){
				if _x_offset < 0 { _x_offset++ } else { _x_offset-- }
				if _y_offset < 0 { _y_offset++ } else { _y_offset-- }
			}				
			var _special_inst = instance_create_depth(x+_x_offset ,y+ _y_offset, depth-100, _special_spell.special_obj)
			oPlayer.x = x+_x_offset
			oPlayer.y = y+_y_offset
			
		}else if(_special_spell.spell_index == global.special_spell_struct.duck.spell_index){// Duck
			dist_from_center_to_wand_tip = (sprite_get_bbox_right(sPlayer)- sprite_get_xoffset(sPlayer)) 
				+ (sprite_get_bbox_right(sWand)- sprite_get_xoffset(sWand)) 
				
			var _x_offset = lengthdir_x(dist_from_center_to_wand_tip , _aim_dir)
			var _y_offset = lengthdir_y(dist_from_center_to_wand_tip , _aim_dir)
			
			while (place_meeting(x + _x_offset,y + _y_offset,oWall) ){
				if _x_offset < 0 { _x_offset++ } else { _x_offset-- }
				if _y_offset < 0 { _y_offset++ } else { _y_offset-- }
			}
			var _projectile_inst = instance_create_depth(x +_x_offset , y +_y_offset, depth-100, _special_spell.special_obj)
			
		}else if(_special_spell.spell_index == global.special_spell_struct.triple_surge.spell_index) {// Triple Surge
			
			oPlayer.is_triple_surge_active = true
			
		}else{// everything else
			
		}
		
		
		if (global.logging) {
			var _data = {
				curr_time: time(),
				spell: special_spell.spell_name
			}
			cap_logger_action_level(SPECIAL_SPELL_USED, json_stringify(_data))
		}

}