/// @description Movement

#region walking

if (keyboard_check(vk_right)) {
	x += 5;
}
if (keyboard_check(vk_left)){
	x -= 5;
}
if (keyboard_check(vk_down)) {
	y += 5;
}
if (keyboard_check(vk_up)) && !jump_lock{
	jump_lock = true;
	vsp = -3;
}

//Jump Movement
	//Gravity
if !place_meeting(x, y, grounds) {
	vsp += .1;
} else {
	vsp = 0;
}
	//Movement
y += vsp;


#endregion
