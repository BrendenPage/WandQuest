/// @description Check to extend map arm from current position

var _cell_x = pos_arm_x[to_check_arm_index]
var _cell_y = pos_arm_y[to_check_arm_index]

arm_length[to_check_arm_index]--

var _possible_directions = []
// populate possible directions with the directions allowed by the map construction
if (map[_cell_x+1, _cell_y] == 0 and _cell_x+1 < map_size) {
	array_push(_possible_directions, "right")
}
if (map[_cell_x-1, _cell_y] == 0 and _cell_x-1 >= 0) {
	array_push(_possible_directions, "left")
}
if (map[_cell_x, _cell_y+1] == 0 and _cell_y+1 < map_size) {
	array_push(_possible_directions, "up")
}
if (map[_cell_x, _cell_y-1] == 0 and _cell_y-1 >= 0) {
	array_push(_possible_directions, "down")
}

switch(to_check_arm_index) {
	case 0:
		if (array_contains(_possible_directions, "right")) {
			array_push(_possible_directions, "right")
		}
		break
	case 1:
		if (array_contains(_possible_directions, "up")) {
			array_push(_possible_directions, "up")
		}
		break
	case 2:
		if (array_contains(_possible_directions, "left")) {
			array_push(_possible_directions, "left")
		}
		break
	case 3:
		if (array_contains(_possible_directions, "down")) {
			array_push(_possible_directions, "down")
		}
}
// Choose a random direction to go
var _chosen_direction = _possible_directions[irandom_range(0,array_length(_possible_directions)-1)]

switch (_chosen_direction) {
	case "right":
		map[_cell_x + 1, _cell_y] = to_check_arm_index + 1
		pos_arm_x[to_check_arm_index]++
		break
	case "left":
		map[_cell_x - 1, _cell_y] = to_check_arm_index + 1
		pos_arm_x[to_check_arm_index]--
		break
	case "up":
		map[_cell_x, _cell_y + 1] = to_check_arm_index + 1
		pos_arm_y[to_check_arm_index]++
		break
	case "down":
		map[_cell_x, _cell_y - 1] = to_check_arm_index + 1
		pos_arm_y[to_check_arm_index]--
	default:
		// No rooms can be added, don't decrement counter
		total_rooms++
}
total_rooms--
