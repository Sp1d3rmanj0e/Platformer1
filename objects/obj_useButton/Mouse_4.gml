/// @description When Clicked
if (image_index != 2) {
	script_execute(ds_grid_get(playerInventory,4,itemSelected));
	scr_trashItem();
}