var leftColl = collision_line(x-widthSize,y-heightSize,x-widthSize,y+heightSize-1,[O_Ground,O_Bowl],0,0);
dirX = -1;
if (!leftColl)
{
	hspeed = -moveSpeed;
}
else
{
	hspeed = 0;
}