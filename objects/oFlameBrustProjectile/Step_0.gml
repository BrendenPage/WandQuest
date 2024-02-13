

//clean up

//destory
var hitbox_ref = hitbox

with (hitbox) {
	with(oHurtbox){
		if (place_meeting(x,y,other) && if_enemy != other.if_enemy){
			instance_destroy(hitbox_ref);
		}
	}
}

if duration >= 8{
	instance_destroy(self)
}else{
	duration++;	
}

