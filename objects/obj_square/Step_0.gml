/// @description Movement
//fixing physics stuff
xx = phy_position_x;
yy = phy_position_y;
#region walking
if (keyboard_check(vk_right)) && (!place_meeting(xx+1,yy,grounds)) xx += 5;
if (keyboard_check(vk_left)) && (!place_meeting(xx-1,yy,grounds)) xx -= 5;
if (keyboard_check(vk_down)) yy += 5;
#region jumping
if (keyboard_check_pressed(vk_up)) && (jumps > 0) && (vel_y == 0){
	physics_apply_impulse(xx,yy,0,-10);
	jumps --;}
vel_y = phy_linear_velocity_y; //Better name
if (!keyboard_check(vk_up)) && (vel_y < 0) vel_y = max(vel_y,0);
if (place_meeting(xx,yy+1,grounds)) && (!keyboard_check(vk_up)) jumps = 1;
#endregion
#endregion
phy_linear_velocity_y = vel_y; // if there's a problem, check here first
phy_position_x = xx;
phy_position_y = yy;

