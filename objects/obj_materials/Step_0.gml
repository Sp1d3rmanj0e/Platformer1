/// @description Stuff

#region shading
if (distance_to_object(obj_square) > 16) { //further than mining distance
		shade = 75 - distance_to_object(obj_square);
		image_blend = make_color_rgb(shade,shade,shade);	
} else if (!position_meeting(mouse_x,mouse_y,id)) { //not touching mouse
	image_blend = c_white;
} else if (mouse_check_button(mb_left)) && (level_req > obj_pickaxe.level) { //touching but doesn't meet pick level
	image_blend = c_red;
} else { //mining distance not selected
	image_blend = make_color_rgb(119,136,153);
}
if (shade < 0) image_blend = c_black;
#endregion
//Check if mining
if (image_blend = make_color_rgb(119,136,153)) && (mouse_check_button(mb_left)) && (alarm[0] <= 0) {
	alarm[0] = obj_pickaxe.mine_speed;
}   //instance_destroy();

//Check if life is left
if (life < 1) { //mined
	
	//itemName = 0
	//amount = 1
	//description = 2
	//sprite = 3
	//newScript = 4
	scr_additem(playerInventory,itemName,amount,description,sprite,newScript,maxStack);
	instance_destroy();
}