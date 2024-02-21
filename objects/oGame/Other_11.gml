/// @description Set up camera and viewport
view_enabled = true
view_visible[0] = true
view_set_xport(0, 0)
view_set_yport(0, 0)
view_wport[0] = VIEWPORT_WIDTH
view_hport[0] = VIEWPORT_HEIGHT
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, player, -1, -1, VIEWPORT_WIDTH/2, VIEWPORT_HEIGHT/2);
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - camera_width/2;
var _ypos = (_dheight / 2) - camera_height/2;
window_set_rectangle(_xpos, _ypos, camera_width, camera_height);
surface_resize(application_surface, camera_width, camera_height);
