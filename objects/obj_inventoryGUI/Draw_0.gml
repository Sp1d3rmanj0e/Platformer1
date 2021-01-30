/// @description Draw on screen

draw_self();
draw_set_color(myColor);

draw_text(bbox_left+textBorder,bbox_top+textBorder,"Image");
draw_text(bbox_left+65,bbox_top+textBorder,"Name");
draw_text(bbox_left+115,bbox_top+textBorder,"Amount");

itemLeftStart = bbox_left + 120;
itemTopStart = bbox_top + 48;

for (i = 1;i < inventoryEndAt;i++) {
	draw_text(itemLeftStart,itemTopStart+(i*16)-16,ds_grid_get(myItems,0,i));
}
for (i = 1;i < inventoryEndAt;i++) {
	draw_text(itemLeftStart + 50,itemTopStart+(i*16)-16,ds_grid_get(myItems,1,i));
}