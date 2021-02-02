/// @description Setting Up Global Variables
globalvar playerInventory,playerInventoryWidth, scrolledAmount, itemSelected;
playerInventoryWidth = 5;
playerInventory = ds_grid_create(playerInventoryWidth,1);
lock = 0;
scrolledAmount = 0;
if (ds_grid_height(playerInventory) >= 1) {
	itemSelected = ds_grid_height(playerInventory);
} else {
	itemSelected = 0;
}