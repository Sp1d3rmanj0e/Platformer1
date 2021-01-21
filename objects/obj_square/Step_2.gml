/// @description Viewports

#region Camera follow player

//Get variables
half_camera_width = camera_get_view_width(view_camera[0]) / 2;
half_camera_height = camera_get_view_height(view_camera[0]) / 2;
camera_x = camera_get_view_x(view_camera[0]);
//camera_y = camera_get_view_y(view_camera[0]) + half_camera_height*2; - Use when jumping is avalible.

//Camera stops at borders
if camera_x < room_width - half_camera_width*2 || x < camera_x + half_camera_width {
	//Right side camera stop
	if camera_x > 0 || x > half_camera_width {
		//Left side camera stop
		camera_set_view_pos(view_camera[0],x - half_camera_width, y - half_camera_height);
	}
}

#endregion