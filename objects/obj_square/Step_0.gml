/// @description Movement
//fixing physics stuff
xx = phy_position_x;
yy = phy_position_y;
#region walking
if (phy_linear_velocity_y <= 0) {
	if (keyboard_check(ord("D"))) && (!place_meeting(xx+1,yy,grounds)) xx += 2;
	if (keyboard_check(ord("A"))) && (!place_meeting(xx-1,yy,grounds)) xx -= 2;
}
	if (keyboard_check(ord("S"))) yy += 5;
#region jumping
if (place_meeting(phy_position_x,phy_position_y,obj_ladder)) {
	if (keyboard_check(ord("W"))) {
		yy -= 1.5;
	}
}
#endregion
#endregion
//phy_linear_velocity_y = vel_y; // if there's a problem, check here first
phy_position_x = xx;
phy_position_y = yy;

