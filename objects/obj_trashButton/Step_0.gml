/// @description Follow select cursor
GUI = obj_inventoryGUI;
x = GUI.bbox_left + 13;
y = (GUI.bbox_top + 55) + ((itemSelected - scrolledAmount) * 20);

if (holdCount > holdCountMax) {
	scr_trashItem();
	if (ds_grid_get(playerInventory,1,(itemSelected + 1)) > 1) {
		holdCount -= holdCountMax/4; //faster cooldown
	} else {
		holdCount -= holdCountMax/2; //longer cooldown
	}
}
