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
//if (keyboard_check_pressed(ord("W"))) && (jumps > 0) && (vel_y == 0){
//	physics_apply_impulse(xx,yy,0,-5);
//	jumps --;}
//vel_y = phy_linear_velocity_y; //Better name
//if (!keyboard_check(ord("W"))) && (vel_y < 0) vel_y = max(vel_y,0);
//if (place_meeting(xx,yy+1,grounds)) && (!keyboard_check(ord("W"))) jumps = 1;
#endregion
#endregion
//phy_linear_velocity_y = vel_y; // if there's a problem, check here first
phy_position_x = xx;
phy_position_y = yy;

