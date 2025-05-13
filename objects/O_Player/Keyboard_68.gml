var rightColl = collision_line(x+widthSize,y-heightSize,x+widthSize,y+heightSize-1,O_Ground,0,0);
if (!rightColl)
{
	hspeed = moveSpeed;
}
else
{
	hspeed = 0;
}