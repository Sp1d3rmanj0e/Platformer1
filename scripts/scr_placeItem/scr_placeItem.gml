// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_placeItem(){
	
	summonItem = undefined;
	//get item using
	if (initialGridHeight = ds_grid_height(playerInventory)) {
		if (ds_grid_get(playerInventory,3,itemSelected+1) = 5) summonItem = obj_ladder;
		obj_inventory.lock = 1; //Inventory can't be opened
		if (instance_exists(obj_inventoryGUI)) {
			//remove inventory
			instance_destroy(obj_inventoryGUI);
			instance_destroy(obj_trashButton);
			instance_destroy(obj_useButton);
		}
		instance_create_layer(mouse_x,mouse_y,"blocks",summonItem);
	}
}