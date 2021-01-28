/// @description Stuff
#region Open Inv
if (keyboard_check_pressed(vk_tab)) {
	if (inventory) {
		inventory = false;
	} else {
		inventory = true;
	}
}
if (inventory) {
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
} else {
	x = -416;
	y = 96;	
}
#endregion
#region Inventory Items
#endregion