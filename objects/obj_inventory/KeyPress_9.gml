/// @description Show Inventory
if (!instance_exists(obj_inventoryGUI)) {
	inventoryDisplay = instance_create_depth(0,0,depth-1,obj_inventoryGUI);
	with (inventoryDisplay) {
		x = camera_get_view_x(view_camera[0]);
		y = camera_get_view_y(view_camera[0]);
	}
	with(obj_inventory) {
		if (ds_grid_height(playerInventory) > 1) {
			instance_create_layer(0, 0,"Top",obj_trashButton);
			instance_create_layer(0, 0,"Top",obj_useButton);
		}
	}
} else {
	instance_destroy(obj_inventoryGUI);
	instance_destroy(obj_trashButton);
	instance_destroy(obj_useButton);
}