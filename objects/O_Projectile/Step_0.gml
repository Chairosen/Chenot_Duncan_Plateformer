var collPlayer = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,O_Player,0,0);
var coll = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,[O_Ground,O_Bowl],0,0);

if (coll)
{
	instance_destroy(self);
}
else if (collPlayer)
{
	Sc_TakeDamage(O_Player,1);
	if (O_Life_Manager.playerHP == 0)
	{
		O_Life_Manager.alarm[1] = 1;
	}
	instance_destroy(self)
}