/// @description Set up camera and viewport
camera_width = (960*CAMERA_SCALE_NATIVE)
camera_height= (540*CAMERA_SCALE_NATIVE)

if (os_browser != browser_not_a_browser) {
	camera_width = browser_width*CAMERA_SCALE_BROWSER
	camera_height= (9/16)*browser_width*CAMERA_SCALE_BROWSER
}

view_enabled = true
view_visible[0] = true
view_set_xport(0, 0)
view_set_yport(0, 0)
view_wport[0] = VIEWPORT_WIDTH
view_hport[0] = VIEWPORT_HEIGHT

if (!variable_global_exists("camera")) {
	global.camera = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, -1, -1, -1, VIEWPORT_WIDTH/2, VIEWPORT_HEIGHT/2)
}

if (player != undefined) {
	view_set_camera(0, global.camera)
	camera_set_view_target(view_camera[0], player);
	view_set_wport(0, VIEWPORT_WIDTH)
	view_set_hport(0, VIEWPORT_HEIGHT)
}

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - camera_width/2;
var _ypos = (_dheight / 2) - camera_height/2;
window_set_rectangle(_xpos, _ypos, camera_width, camera_height);
surface_resize(application_surface, camera_width, camera_height);
