/// @description Stuff
#region cameras //follow camera movement
if (scr_onTheWall(0)) x = obj_square.phy_position_x - half_camera_width;
if (scr_onTheWall(1)) y = obj_square.phy_position_y - half_camera_height;
#endregion
if (ds_grid_get(myItems,0,1) != undefined) { //If Inventory is not empty
	inventoryEndAt = ds_grid_height(myItems); //Set endheight to gridheight
	isEmpty = false;
	if (ds_grid_height(myItems) >= (floor((sprite_height-textBorder*3)) / 25)) { //items is larger than visible space
		inventoryEndAt = floor((sprite_height-textBorder*3)) / 25;
	}
	initialGridHeight = ds_grid_height(myItems);
}
if (ds_grid_height(playerInventory) > 1) && (!instance_exists(obj_trashButton)) { //Makes buttons when needed
	instance_create_depth(0, 0,depth-1,obj_trashButton);
	instance_create_depth(0, 0,depth-1,obj_useButton);
	scr_scrolling(1);
}