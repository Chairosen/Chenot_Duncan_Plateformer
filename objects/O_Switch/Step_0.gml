if (window_get_fullscreen())
{
	if (image_index >= 0.5)
	{
		image_speed = -1;
	}
	else
	{
		image_speed = 0
	}
}
else
{
	if (image_index <= 16.5)
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0
	}
}