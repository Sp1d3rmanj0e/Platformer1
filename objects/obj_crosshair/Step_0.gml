/// @description Movement
if (instance_exists(obj_pickaxe)) {
	x = obj_pickaxe.x;
	y = obj_pickaxe.y;
}
if (keyboard_check(vk_up)) || (keyboard_check(vk_down)) || (keyboard_check(vk_left)) || (keyboard_check(vk_right)) {
	switch (keyboard_key) { //Movement Commands
		case (vk_down):
		case (ord("S")):
			x += 0;
			y += 16;
		break;
		case (vk_up): 
		case (ord("W")):
			x += 0;
			y += -16;
		break;
		case (vk_right):
		case (ord("D")):
			x += 16;
			y += 0;
		break;
		case (vk_left):
		case (ord("A")):
			x += -16;
			y += 0;
		break;
		default:
			x += 0;
			y += 0;
	}
}