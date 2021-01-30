/// @description Show Inventory
if (!instance_exists(obj_inventoryGUI)) {
	inventoryDisplay = instance_create_depth(0,0,depth-1,obj_inventoryGUI);
	with (inventoryDisplay) {
		x = camera_get_view_x(view_camera[0]);
		y = camera_get_view_y(view_camera[0]);
	}
} else {
	instance_destroy(obj_inventoryGUI);
}