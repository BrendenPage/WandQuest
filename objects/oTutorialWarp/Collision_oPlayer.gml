global.current_room = target_room
global.game.player.x = target_x
global.game.player.y = target_y
layer_set_target_room(target_room)
room_goto(target_room);

