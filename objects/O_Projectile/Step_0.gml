var collPlayer = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,O_Player,0,0);
var coll = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,O_Ground,0,0);

if (coll)
{
	instance_destroy(self);
}
else if (collPlayer)
{
	O_Life_Manager.playerHP -= 1;
	instance_destroy(self)
}