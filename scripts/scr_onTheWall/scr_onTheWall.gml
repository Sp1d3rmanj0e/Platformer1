// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_onTheWall(XorY){
//Camera Stops at borders
	//Get variables
	half_camera_width = camera_get_view_width(view_camera[0]) / 2;
	half_camera_height = camera_get_view_height(view_camera[0]) / 2;
	camera_x = camera_get_view_x(view_camera[0]);
	camera_y = camera_get_view_y(view_camera[0]);

	if (XorY = 0) {
			//X stops
		if camera_x < room_width - half_camera_width*2 || obj_square.phy_position_x < camera_x + half_camera_width {
			//Right side stop
			if camera_x > 0 || obj_square.phy_position_x > half_camera_width {
				//Left side stop
				return true;
			} else {
				return false;
			}
		}
	} else if (XorY = 1) {

		if ((camera_y < room_height - half_camera_height*2) || (obj_square.phy_position_y < camera_y + half_camera_height)) {
			//Bottom side stop
			if (camera_y > 0) || (obj_square.phy_position_y > half_camera_height) {
				//Left side stop
				return true;
			} else {
				return false;
			}
		}
	} //case 2
} //end function