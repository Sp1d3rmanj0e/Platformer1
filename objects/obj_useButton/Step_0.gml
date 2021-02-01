/// @description  Follow select cursor
GUI = obj_inventoryGUI;
x = GUI.bbox_left + 150;
y = (GUI.bbox_top + 55) + ((itemSelected - scrolledAmount) * 20);

if (ds_grid_get(playerInventory,4,itemSelected + 1) = "") { //if object has no script
	image_index = 2; //greyscale button
}