var touchGround = collision_rectangle(x-16,y-16,x+16,y+16,O_Ground,0,0);

if (touchGround)
{
	instance_destroy(self);
}