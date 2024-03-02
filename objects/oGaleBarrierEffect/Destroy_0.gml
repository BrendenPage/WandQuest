/// @description Insert description here
// You can write your code in this editor
if (instance_exists(hitbox)){
	instance_destroy(hitbox)
}

if(cur_state == unignited_state){
	for (var _i = 0; _i < 5; _i++){
		instance_destroy(arr_tornado_obj[_i])
	}
}











