/// @description Creation things
y-=9;
image_yscale = ((y-144)/16)*8 + 16; //the 16 for good measure (and probably to not crash)
if (place_meeting(x,y,obj_materials)) {
	successful = false;
} else {
	successful = true;
}
alarm[0] = 1;