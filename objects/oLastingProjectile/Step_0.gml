/// @description Insert description here
// You can write your code in this editor

// Don't inherit the parent event

var _damage_blacklist = damage_blacklist


var _keys_array = ds_map_keys_to_array(damage_blacklist);
var _num_keys = array_length(_keys_array);
for (var i = 0; i < _num_keys; i++) {
    var key = _keys_array[i];
    var value = damage_blacklist[? key];
	damage_blacklist[? key] = max(0, value-1)
	if (value == 0) {
		ds_map_delete(damage_blacklist, key)
	}
}

if (hitbox) {
	with (hitbox) {
		if instance_exists(oHurtbox) {
			with(oHurtbox){
				if (other and owner) {
					if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
						if (!ds_map_exists(_damage_blacklist, owner)) {
							deal_damage(owner, other.owner.damage)
							ds_map_add(_damage_blacklist, owner, BLACKLIST_TIME)
						}
					}
				}
			}
		}
	}
}


duration = max(0,duration - 1)

if duration == 0{
	instance_destroy(self)
}