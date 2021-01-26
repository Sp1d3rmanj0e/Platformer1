/// @description Collision
if (place_meeting(x,y,obj_crosshair)) {
	if (obj_pickaxe.level >= level_req) && (alarm[0] <= 0) {
		alarm[0] = mine_speed;
	}
	//end
}
if (life <= 0) {
		//collection
		instance_destroy();
	}