//Collisions
var isGrounded = collision_line(x-widthSize+5,y+heightSize,x+widthSize-5,y+heightSize,[O_Ground,O_Bowl],0,0);
var toCeilling = collision_line(x-widthSize,y-heightSize,x+widthSize,y-heightSize,[O_Ground,O_Bowl],0,0);
var inGround = collision_rectangle(x-widthSize+5,y,x+widthSize-5,y+heightSize,[O_Ground,O_Bowl],0,0);
var inCeilling = collision_rectangle(x-widthSize+5,y-heightSize,x+widthSize-5,y,O_Ground,0,0);
var inLeft = collision_rectangle(x-widthSize,y-heightSize,x,y+heightSize,[O_Ground,O_Bowl],0,0);
var inRight = collision_rectangle(x,y-heightSize,x+widthSize,y+heightSize,[O_Ground,O_Bowl],0,0);

//Inputs
var qDown = keyboard_check(ord("Q"));
var dDown = keyboard_check(ord("D"));
var spacePressed = keyboard_check_pressed(vk_space);

//(Red Hot Chili Peppers - can't) stop
if (!qDown)
{
	if (!dDown)
	{
		dirX = 0;
		hspeed = 0
	}
}

//if inside the ground, extract
if (inGround)
{
	y -= 2;
}
if (inCeilling)
{
	y += 10;
}
if (inRight)
{
	x -= 2;
}
if (inLeft)
{
	x += 2;
}

//on ground
if (isGrounded)
{
	nuggetJumped = false
	if (spacePressed)
	{
		if (!toCeilling)
		{
			vspeed = jumpForce;
		}
	}
	else
	{
		vspeed = 0;
	}
}
//in air
else
{
	//If touch the ceilling in air, stop the jump
	if (toCeilling)
	{
		vspeed = 0;
	}
	else
	{
		if (spacePressed)
		{
			if (!nuggetJumped)
			{
				nuggetJumped = true;
				instance_create_layer(x,y,"Player",O_PipiteDiChoucoula);
				y -= 256;
			}
		}
	}
	//back on ground
	if (vspeed<gravityForce)
	{
		vspeed += 1;
	}
	else
	{
		vspeed = gravityForce
	}
}