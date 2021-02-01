/// @description Startup
spawn = droppedItemId;
droppedItemId++;
image_alpha = 1;
image_speed = 0;
phy_rotation = 0;
phy_fixed_rotation = true;
alarm[0] = room_speed * 3
lock = 1;
physics_apply_local_impulse(phy_position_x,phy_position_y,random_range(-1.5,1.5),-15);