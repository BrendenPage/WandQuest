/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, oPlayer)) {
	ctr += 1
}

with(hitbox) {
	x = other.x + x_offset
	y = other.y + y_offset
	with(oHurtbox){
		if (place_meeting(x,y,other) && other.owner != owner) {
			var msg = string(other.owner)
			show_debug_message(msg)
			show_debug_message(owner)
			show_debug_message(other.owner != owner)
		}
	}
}

with(slime_hurtbox) {
	x = other.x + x_offset
	y = other.y + y_offset
}

move_and_collide(1,1,oCollide)