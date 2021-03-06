/// @description Setting Up Variables
// Adding test items
/*
scr_additem(playerInventory,"Test",4,"Test",0,"");
scr_additem(playerInventory,"Test1",3,"Test",0,"");
scr_additem(playerInventory,"Test2",2,"Test",0,"");
scr_additem(playerInventory,"Test3",5,"Test",0,"");
scr_additem(playerInventory,"Test4",6,"Test",0,"");
scr_additem(playerInventory,"Test5",7,"Test",0,"");
*/

textBorder = 5;
myItems = playerInventory;
myColor = c_black;
isEmpty = false;
emptyMessage = "You've no items";

globalvar inventoryEndAt, initialGridHeight;
inventoryEndAt = min(ds_grid_height(myItems),floor((sprite_height-textBorder*3)) / 25);
inventoryOnScreen = 0;
if (ds_grid_get(myItems,0,1) == undefined) {
	inventoryEndAt = 0;
	isEmpty = true;
}
initialGridHeight = ds_grid_height(myItems);