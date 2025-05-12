var isGrounded = collision_rectangle(x,y,x+sprite_width,y+sprite_height,O_Ground,0,0);
var qDown = keyboard_check(ord("Q"));
var dDown = keyboard_check(ord("D"));

if (!qDown)
{
	if (!dDown)
	{
		hspeed = 0
	}
}

if (isGrounded)
{
	vspeed = 0;
}
else
{
	if (!isJumping)
	{
		vspeed = gravityForce;
	}
}