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

var upPressed = keyboard_check_pressed(vk_up);
var downPressed = keyboard_check_pressed(vk_down);
var rightPressed = keyboard_check_pressed(vk_right);
var leftPressed = keyboard_check_pressed(vk_left);
var rCtrlPressed = keyboard_check_pressed(vk_rcontrol);

//stop movement
if (!qDown)
{
	if (!dDown)
	{
		dirX = 0;
		hspeed = 0
	}
}

if (!godmod)
{
	//if inside collision, extract
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
		x -= 6;
	}
	if (inLeft)
	{
		x += 6;
	}

	//on ground
	if (isGrounded)
	{
		nuggetJumped = false
		if (!spacePressed)
		{
			vspeed = 0;
		}
		else
		{
			if (!toCeilling)
			{
				vspeed = jumpForce;
			}
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
			//nugget jump : double jump
			if (spacePressed)
			{
				if (!nuggetJumped)
				{
					nuggetJumped = true;
					instance_create_layer(x,y,"Player",O_PipiteDiChoucoula);
					vspeed -= 10;
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
	//godmod
	if(upPressed){
		alarm[1] = 30;
		if(alarm[1] <= 30 && upPressed)
		{
			alarm[1] = 30;
			if(alarm[1] <= 30 && downPressed)
			{
				alarm[1] = 30;
				if(alarm[1] <= 30 && downPressed)
				{
					alarm[1] = 30;
					if(alarm[1] <= 30 && leftPressed)
					{
						alarm[1] = 30;
						if(alarm[1] <= 30 && rightPressed)
						{
							alarm[1] = 30;
							if(alarm[1] <= 30 && leftPressed)
							{
								alarm[1] = 30;
								if(alarm[1] <= 30 && rightPressed)
								{
									godmod = true;
								}
							}
						}
					}
				}
			}
		}
	}
}
else 
{
	if(rCtrlPressed)
	{
		godmod = false
	}
}