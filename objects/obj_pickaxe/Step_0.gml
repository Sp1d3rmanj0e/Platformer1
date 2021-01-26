/// @description Steplike things

//movement
x = obj_square.phy_position_x
y = obj_square.phy_position_y

switch (keyboard_key) { //Mining commands
	case (vk_down):
		image_index = 1;
	break;
	case (vk_up): 
		image_index = 2;
	break;
	case (vk_right):
		image_index = 3;
	break;
	case (vk_left):
		image_index = 4;
	break;
	default:
		image_index = 0;
	
}

if (image_index = 0) {
	if (keyboard_check(ord("D"))) {
		image_xscale = -1;
	}
} else {
	image_xscale = 1	
}

//if (durability < 1) {     Use this code later
//	//maybe add function here
//	instance_destroy();	
//}