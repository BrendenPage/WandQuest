x = global.game.player.x;
y = global.game.player.y;

if (global.game_paused) {
	visible = false
} else {
	visible = true
}

if (global.game.player.knockback_frames > 0) {
	image_blend = c_red
} else {
	image_blend = -1
}