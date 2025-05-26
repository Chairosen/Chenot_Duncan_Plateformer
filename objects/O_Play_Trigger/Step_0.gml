var mouseOver = collision_point(mouse_x,mouse_y,self,0,0);

if (mouseOver)
{
	view_visible[0] = false
	view_visible[visibleView] = true;
}
else 
{
	view_visible[visibleView] = false
	view_visible[0] = true;
}