//move
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);

	x += xspd;
	y += yspd;



//clean up

	//destory
	if destroy == true{
		instance_destroy();
	}
	
	if point_distance(xstart,ystart,x,y) > max_dist{
		destroy = true; 
	}
	
	

