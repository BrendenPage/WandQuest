

duration_timer = max(0,duration_timer - 1)



if duration_timer == 0 {
	for (var _i = 0; _i < 5; _i++){
		instance_destroy(arr_tornado_obj[_i])
	}
	instance_destroy(self)
}

















