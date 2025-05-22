if (O_Player.x >= self.bbox_left && O_Player.x <= self.bbox_right)
{
	show_debug_message("1")
	if (O_Player.y >= self.y-64 && O_Player.y <= self.y)
	{
		show_debug_message("2")
		O_Player.y -=1
		O_Player.vspeed = -30;
		self.image_speed = 1;
	}
}
else{show_debug_message("0")}