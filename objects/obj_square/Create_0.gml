/// @description Setup

half_camera_width = camera_get_view_width(view_camera[0]) / 2;
half_camera_height = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0],x - half_camera_width, y - half_camera_height);