/// @description Stuff

//Get variables
half_camera_width = camera_get_view_width(view_camera[0]) / 2;
half_camera_height = camera_get_view_height(view_camera[0]) / 2;
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);

//Inventory stops at borders
	//X stops
if camera_x < room_width - half_camera_width*2 ||obj_square.x < camera_x + half_camera_width {
	//Right side inventory stop
	if camera_x > 0 || obj_square.x > half_camera_width {
		//Left side inventory stop
		x = obj_square.phy_position_x - half_camera_width
	}
}

camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);

if camera_y < room_height - half_camera_height*2||obj_square.y < camera_y + half_camera_height {
	//Bottom side inventory stop
	if camera_y > 0 ||obj_square.y > half_camera_height {
		//Left side inventory stop
		y = obj_square.phy_position_y - half_camera_height
	}
}