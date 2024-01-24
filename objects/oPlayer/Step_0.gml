move_speed = SPEED*speed_modifier;
var x_input = keyboard_check(ord("D")) - (keyboard_check(ord("A")));
var y_input = keyboard_check(ord("S")) - (keyboard_check(ord("W")));
move_and_collide(x_input * move_speed, y_input * move_speed, oCollide);