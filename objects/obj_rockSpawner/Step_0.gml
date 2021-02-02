/// @description Rock Spawning

if (count <= 0) {
	instance_create_depth(x,y,depth-2,obj_rock);
	if (x < 973) {
		x += random_range(5,120);
		y = irandom_range(121,126);
	} else {
		x = 263 + random_range(-10,10);
		y = irandom_range(121,126);
		count++;
	}
}