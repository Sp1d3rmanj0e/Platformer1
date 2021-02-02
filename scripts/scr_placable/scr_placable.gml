// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_placable(){
	function finished() {
		instance_destroy();
		done = true;
		obj_inventory.lock = 0;
	}
	if (mouse_button != mb_left) lock = 0;
	if (!done) && (lock = 0) {
		if (keyboard_key != vk_escape) { //cancel script
			if (mouse_button != mb_left) { //place
				x = mouse_x;
				y = mouse_y;
				image_blend = c_white;
			} else if (y < 128) || (distance_to_point(obj_square.x,obj_square.y) > 16*3) { //if too high
				image_blend = c_red;
			} else if (!place_meeting(x,y,grounds)) && (!place_meeting(x,y,placableItems)) { // if not behind something
				image_blend = c_white;
				scr_trashItem(0);
				done = true;
				obj_inventory.lock = 0;
				if (initialGridHeight = ds_grid_height(playerInventory)) {
					scr_placeItem(); //prep next item
				}
			} else {
				finished();
			}
			x = ((round(x/16)) * 16);
			y = ((round(y/16)) * 16);
		} else {
			finished();
		}
	}
}