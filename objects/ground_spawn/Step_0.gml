/// @description Spawning

if (y < alt(7)) {
	
	instance_create_layer(x,y,"Blocks",obj_materials);
	
	if (x < 1360) {
		x += 16;
	} else {
		x = 16;
		y +=16;
	}
}