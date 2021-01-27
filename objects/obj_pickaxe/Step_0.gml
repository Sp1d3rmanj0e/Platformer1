/// @description
if (instance_exists(obj_pickaxe)) {
	x = obj_square.x
	y = obj_square.y
}
image_angle = point_direction(x,y,mouse_x,mouse_y);

if (mouse_check_button(mb_left)) {
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}