/// @description Insert description here
// You can write your code in this editor

var _ref = self

if (hitbox) {
	with (hitbox) {
		if instance_exists(oHurtbox) {
			with(oHurtbox){
				if (other and owner) {
					if (place_meeting(x,y,other) && if_enemy != other.if_enemy) {
						if !(array_contains(_ref.damage_blacklist, self)) {
							deal_damage(owner, other.owner.damage)
							if (_ref.piercing_count != 0) {
								array_push(_ref.damage_blacklist, self)
							}
							_ref.piercing_count = max(_ref.piercing_count - 1, 0)
						}
					}
				}
			}
		}
	}
}
