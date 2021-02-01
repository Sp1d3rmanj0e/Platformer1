/// @description Viewports

#region Camera follow player (Emergency Save)

////Get variables
//half_camera_width = camera_get_view_width(view_camera[0]) / 2;
//half_camera_height = camera_get_view_height(view_camera[0]) / 2;
//camera_x = camera_get_view_x(view_camera[0]);
//camera_y = camera_get_view_y(view_camera[0]);

////Camera stops at borders
//	//X stops
//if camera_x < room_width - half_camera_width*2 || x < camera_x + half_camera_width {
//	//Right side camera stop
//	if camera_x > 0 || x > half_camera_width {
//		//Left side camera stop
//		camera_set_view_pos(view_camera[0],x - half_camera_width, camera_y);
//	}
//}

//camera_x = camera_get_view_x(view_camera[0]);
//camera_y = camera_get_view_y(view_camera[0]);

//if camera_y < room_height - half_camera_height*2|| y < camera_y + half_camera_height {
//	//Bottom side camera stop
//	if camera_y > 0 || y > half_camera_height {
//		//Left side camera stop
//		camera_set_view_pos(view_camera[0], camera_x, y - half_camera_height);
//	}
//}
#endregion
if (scr_onTheWall(1)) camera_set_view_pos(view_camera[0], camera_x, y - half_camera_height);
if (scr_onTheWall(0)) camera_set_view_pos(view_camera[0],x - half_camera_width, camera_y);