// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.enemy_scale = {
	"oSlime": 0.5,
	"oGun": 0.9,
	"oRedGun": 0.9,
	"oGoblinArcher": 1,
	"oGoblinWarrior": 1,
	"oSlimeBoss": 1.5,
	"oSpider": 1.5,
	"oSkeleton": 1.2,
	"oPileOfBones": 1,
	"oOoze": 1.5,
	"oWizard": 1
}

function move_towards_player(){
	// Generate the path towards the player
	var _found_player = mp_grid_path(ds_map_find_value(global.grid_map,room), path, x, y, global.game.target.x, global.game.target.y, choose(0,1))
	if (_found_player) {
		path_start(path, speed_, path_action_stop, false)
	}
}

function scale_enemy() {
	var _wing_scale = 1
	var _obj_idx = self.object_index
	image_xscale = global.enemy_scale[$object_get_name(self.object_index)]
	image_yscale = global.enemy_scale[$object_get_name(self.object_index)]

	hurtbox.image_xscale = box_x_size/2 * image_xscale
	hurtbox.image_yscale = box_y_size/2 * image_yscale
	hitbox.image_xscale = box_x_size/2 * image_xscale
	hitbox.image_yscale = box_y_size/2 * image_yscale
}
