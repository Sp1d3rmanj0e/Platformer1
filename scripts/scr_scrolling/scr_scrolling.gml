// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_scrolling(upDown){
	if (upDown = 1) {
		itemSelected = clamp(++itemSelected,0,ds_grid_height(myItems)-2); //down
		if (itemSelected+1 >= inventoryEndAt) {
			scrolledAmount++;
			inventoryOnScreen++;
		}
		if (scrolledAmount + inventoryOnScreen > ds_grid_height(myItems)) scrolledAmount--;
	} else {
		itemSelected = clamp(--itemSelected,0,ds_grid_height(myItems)-2); //up
		if (itemSelected < scrolledAmount) {
			scrolledAmount--;
		}
	}
}