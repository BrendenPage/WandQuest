move_speed = SPEED*speed_modifier;
if(keyboard_check(ord("D"))) { //Move to the right
	x += move_speed; //Physically moves the object the amount of walkSpeed to the right
}
if(keyboard_check(ord("A"))) { //Move to the left
	x -= move_speed;
}
if(keyboard_check(ord("W"))) { //Move Up
	y -= move_speed;
}
if(keyboard_check(ord("S"))) { //Move Down
	y += move_speed;
}
