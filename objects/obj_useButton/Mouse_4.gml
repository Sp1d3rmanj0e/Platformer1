/// @description When Clicked
if (image_index != 2) {
	script_execute(ds_grid_get(playerInventory,4,itemSelected+1)); //no arguments, no parenthesis, no quotes.
	//scr_trashItem() removed from this place.  Place it at the end of any script needed.
}