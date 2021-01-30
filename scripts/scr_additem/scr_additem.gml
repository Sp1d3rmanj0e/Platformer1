// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_additem(grid,itemName,amount,description,sprite,newScript) {
completed = false;
	//itemName = 0
	//amount = 1
	//description = 2
	//sprite = 3
	//newScript = 4
	//case 1 - Item is in inventory
	for (i = 0;i < ds_grid_height(grid);i++) {
		if (ds_grid_get(grid,0,i) == itemName) {
			ds_grid_set(grid,1,i,ds_grid_get(grid,1,i) + amount);
			completed = true;
			return true; //bug checking
		}
	}
	//case 2 - Item is not in inventory
	if (!completed) {
		if (ds_grid_get(grid,0,0) != undefined) {
			ds_grid_resize(grid,playerInventoryWidth,ds_grid_height(grid) + 1);
		
			newItemSpot = ds_grid_height(grid) - 1;
			ds_grid_set(grid,0,newItemSpot,itemName);
			ds_grid_set(grid,1,newItemSpot,amount);
			ds_grid_set(grid,2,newItemSpot,description);
			ds_grid_set(grid,3,newItemSpot,sprite);
			ds_grid_set(grid,4,newItemSpot,newScript);
			return true;
			//inventoryEndAt = ds_grid_height(grid);
		}
	}
} //end function