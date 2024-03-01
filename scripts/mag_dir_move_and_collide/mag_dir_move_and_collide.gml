// @description move_and_collide but you input a dir and magnitude instead of x and y values
function mag_dir_move_and_collide(mag,dir){
	var _x_speed = lengthdir_x(mag,dir)
	var _y_speed = lengthdir_y(mag,dir)

	move_and_collide(_x_speed, _y_speed, oCollide);
}

function mag_dir_move_and_collide_enemy(mag, dir) {
	var _x_speed = lengthdir_x(mag,dir)
	var _y_speed = lengthdir_y(mag,dir)

	move_and_collide(_x_speed, _y_speed, [oWall, oPlayer, oClosedDoor, oGaleBarrierEffect]);
}