// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trashItem(){
	//case 1 - only one item in inventory

	if (ds_grid_height(playerInventory) == 2) { //if only one item in inventory
		if (ds_grid_get(playerInventory,1,1) > 1) { //if the quantity is above 1
			ds_grid_set(playerInventory,1,1,ds_grid_get(playerInventory,1,1) - 1)
		} else {
			for (i = 0;i < playerInventoryWidth; i++) {
				ds_grid_set(playerInventory,i,1,0);
			}
				ds_grid_resize(playerInventory,playerInventoryWidth,ds_grid_height(playerInventory) - 1);
				if (scrolledAmount > 0) scrolledAmount--;
				if (itemSelected > 0) itemSelected--;
		}
	} else


	//case 2 - everything else
	{
		if (ds_grid_get(playerInventory,1,itemSelected+1) > 1) {
			ds_grid_set(playerInventory,1,itemSelected+1,ds_grid_get(playerInventory,1,itemSelected+1) - 1);
		} else {
	if (ds_grid_height(playerInventory) > 1) {
		var currentRow = itemSelected + 2;
		var rowToRemove = itemSelected + 1;

		for (i = rowToRemove;i < ds_grid_height(playerInventory) - 1; i++) { //pull up values
			for (j = 0;j<playerInventoryWidth+1;j++) { //go through all grid values
				ds_grid_set(playerInventory,j,i,ds_grid_get(playerInventory,j,currentRow));
			}
			currentRow++;
		}

	ds_grid_resize(playerInventory,playerInventoryWidth,ds_grid_height(playerInventory)-1);
	if (scrolledAmount > 0) scrolledAmount--;
	if (itemSelected > 0) itemSelected--;
			} //end if (ds_grid_height(playerInventory) > 1)
		} //end else
	} //end case 2
}