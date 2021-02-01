/// @description Darkening

if (obj_square.phy_position_y > 159) {
	y = 7;
	image_alpha = clamp((obj_square.phy_position_y - 159) / (16*4),0,1);
} else if (obj_square.phy_position_y < 116) {
	y = 135;
	image_alpha = clamp(image_alpha + 0.1,0,1);
} else {
	image_alpha = clamp(image_alpha - 0.05,0,1);
}