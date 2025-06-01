var rightColl = collision_line(x+widthSize,y-heightSize,x+widthSize,y+heightSize-1,[O_Ground,O_Bowl],0,0);
dirX = 1;
show_debug_message(godmod);
if (!godmod)
{
	if (!rightColl)
	{
		hspeed = moveSpeed;
	}
	else
	{
		hspeed = 0;
	}
}
else
{
	hspeed = -moveSpeed;
}