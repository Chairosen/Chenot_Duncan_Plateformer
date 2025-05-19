var coll = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,O_Ground,0,1);
var collPlayer = collision_rectangle(bbox_left+32,bbox_top+64,bbox_right-32,bbox_bottom,O_Player,0,1);

if (O_Player.x >= bbox_left && O_Player.x <= bbox_right)
{
	passedUnder = true
}
if (passedUnder)
{
	if (!coll)
	{
		vspeed += 0.5;
	}
	else
	{
		vspeed = 0;
		if (collPlayer)
		{
			Sc_Respawn();
			room_goto(R_Bowl_End);
		}
	}
	}