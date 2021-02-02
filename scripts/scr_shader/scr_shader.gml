// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shader(){
	if (distance_to_object(obj_square) > 16) { //further than mining distance
		shade = 75 - distance_to_object(obj_square);
		image_blend = make_color_rgb(shade,shade,shade);
		if (shade < 0) image_blend = c_black;
		return true;
	} else {
		image_blend = c_white;
	}
}