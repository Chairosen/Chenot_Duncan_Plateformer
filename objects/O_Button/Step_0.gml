var mouseOver = collision_point(mouse_x,mouse_y,self,0,0);

//Si la souris est au dessus du bouton, on zoom sur ce bouton
if (mouseOver)
{
	view_visible[0] = false;
	view_visible[viewportVisible] = true;
}
else
{
	view_visible[viewportVisible] = false;
	view_visible[0] = true;
}