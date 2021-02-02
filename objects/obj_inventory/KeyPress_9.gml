/// @description Show Inventory
if (!instance_exists(obj_inventoryGUI)) && (lock = 0) { //Opening Inventory Sequence
	inventoryDisplay = instance_create_depth(0,0,depth-1,obj_inventoryGUI); //Create GUI
	with (inventoryDisplay) { //Initialize GUI position
		x = camera_get_view_x(view_camera[0]);
		y = camera_get_view_y(view_camera[0]);
	}
	if (ds_grid_height(playerInventory) > 1) {// Inventory not empty -> create the buttons when opened
		instance_create_depth(0, 0,depth-2,obj_trashButton);
		instance_create_depth(0, 0,depth-2,obj_useButton);
	}
}
else { //Destroy buttons and GUI when closed
	instance_destroy(obj_inventoryGUI);
	instance_destroy(obj_trashButton);
	instance_destroy(obj_useButton);
}