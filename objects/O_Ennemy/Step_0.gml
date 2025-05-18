var inGround = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-1,O_Ground,0,0);
var onGround = collision_rectangle(bbox_left,bbox_bottom-64,bbox_right,bbox_bottom,O_Ground,0,0);
var distancePlayer = point_distance(x,y,O_Player.x,O_Player.y);
var distancePlayerAtk = point_distance(x,y,O_Player.x,O_Player.y);

//Physics
if (inGround)
{
	y -= 2;
}
if (onGround)
{
	vspeed = 0;
}
else
{
	if (vspeed < 20)
	{
		vspeed += 1;
	}
}
if (moving)
{
	if (alarm[0] <= 0)
	{
		event_user(2);
	}
	else
	{
		hspeed = 0;
	}
}



if (distancePlayer < detect)
{
	event_user(0);
}
if (distancePlayerAtk < detectAtk)
{
	event_user(1);
}