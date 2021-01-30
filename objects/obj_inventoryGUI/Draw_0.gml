/// @description Draw on screen

draw_self();
draw_set_color(myColor);

draw_text(bbox_left+textBorder,bbox_top+textBorder,"Image");
draw_text(bbox_left+65,bbox_top+textBorder,"Name");
draw_text(bbox_left+115,bbox_top+textBorder,"Amount");

itemLeftStart = bbox_left + 120;
itemTopStart = bbox_top + 48;

for (i = 1;i < inventoryEndAt;i++) {
	inventoryOnScreen = i;
	if (ds_grid_height(playerInventory) >= 2) {
		if (i <= ds_grid_height(playerInventory)-1) {
			draw_text(itemLeftStart - 55,itemTopStart+(i*20)-16,ds_grid_get(myItems,0,i + scrolledAmount)); //Name
			draw_text(itemLeftStart,itemTopStart+(i*20)-16,ds_grid_get(myItems,1,i + scrolledAmount)); //Amount
			draw_sprite(spr_materials,ds_grid_get(myItems,3,i + scrolledAmount),bbox_left + 40,itemTopStart + (i * 20) - 5); //Image
			//draw_text(itemLeftStart + 50,itemTopStart+(i*20)-16,itemSelected); //for testing scroll
		}
	}
}
if (ds_grid_height(myItems) > 1) {
	draw_sprite(spr_outline,0,bbox_left + textBorder + 1.5,itemTopStart + ((itemSelected - scrolledAmount) * 20) + 3); //draws outline
}

if (ds_grid_get(myItems,2,itemSelected+1) != undefined) {
	draw_text(itemLeftStart - 100,itemTopStart - 20, ds_grid_get(myItems,2,itemSelected+1));
} else {
	draw_text(itemLeftStart - 100,itemTopStart - 20, emptyMessage);
	instance_destroy(obj_trashButton);
	instance_destroy(obj_useButton);
}