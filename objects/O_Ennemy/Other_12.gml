/// @description Movement
var obstacleRight = collision_rectangle(bbox_right,bbox_top,bbox_right+10,bbox_bottom-5,[O_Ground,O_Bowl],0,0);
var obstacleLeft = collision_rectangle(bbox_left-10,bbox_top,bbox_left,bbox_bottom-5,[O_Ground,O_Bowl],0,0);

hspeed = walkSpeed;
if (x >= xstart+distance)
{
	show_debug_message("go left")
	walkSpeed = -6;
}
if (x <= xstart-distance)
{
	show_debug_message("go right")
	walkSpeed = 6;
}
if (obstacleLeft || obstacleRight)
{
	vspeed = -16;
}
