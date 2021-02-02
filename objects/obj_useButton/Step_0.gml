/// @description  Follow select cursor
GUI = obj_inventoryGUI;
x = GUI.bbox_left + 150;
y = (GUI.bbox_top + 55) + ((itemSelected - scrolledAmount) * 20);

if (ds_grid_get(playerInventory,4,itemSelected + 1) = "") || (ds_grid_get(playerInventory,4,itemSelected + 1) = undefined){ //if object has no script
	image_index = 2; //greyscale button
} else if (image_index = 2) {
	image_index = 0;
}