function printArray2d(_arr){
	for (var _i = 0; _i < array_length(_arr); _i++) {
		var _line = "["
		for (var _j = 0; _j < array_length(_arr[_i]); _j++) {
			_line += string(_arr[_j,_i]) + ", "
		}
		show_debug_message(_line + "]")
	}
}