/// @description Tree Spawning

if (count <= 3) {
	instance_create_depth(x,y,depth-1,obj_tree);
	if (x < 775) {
		x += random_range(35,80);
	} else {
		x = 227 + random_range(-10,10);
		count++;
	}
}