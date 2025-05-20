var touchGround = collision_rectangle(x-16,y-16,x+16,y+16,O_Ground,0,0);
var touchEnemy = collision_rectangle(x-16,y-16,x+16,y+16,O_Ennemy,0,0);

if (touchGround)
{
	instance_destroy(self);
}
if (touchEnemy)
{
	if (direction <= 270)
	{
		touchEnemy.x -= 128;
	}
	else
	{
		touchEnemy.x += 128;
	}
	instance_destroy()
}