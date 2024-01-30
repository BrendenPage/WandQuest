/// @description Insert description here
// You can write your code in this editor
with(oHurtbox){
	if (place_meeting(x,y,other) && !if_enemy) {
		show_debug_message(string(owner) + " takes " + string(other.owner.damage) +  " damage")
	}
}

