var distancePlayer = point_distance(x,y,O_Player.x,O_Player.y);
var distancePlayerAtk = point_distance(x,y,O_Player.x,O_Player.y);

if (distancePlayer < Detect)
{
	event_user(0);
}
if (distancePlayerAtk < DetectAtk)
{
	event_user(1);
}