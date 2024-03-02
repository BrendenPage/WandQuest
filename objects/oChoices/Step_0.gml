/// @description Insert description here
// You can write your code in this editor

var camera = view_camera[0]
var cWidth = camera_get_view_width(camera)
var cHeight = camera_get_view_height(camera)
var cx = camera_get_view_x(camera)
var cy = camera_get_view_y(camera)
global.game_paused = true

x = cx + cWidth / 2
y = cy + cHeight / 2


image_xscale = cWidth * 3 / 8
image_yscale = cHeight * 3 / 8
