var mouseOver = collision_point(mouse_x,mouse_y,self,0,0);

//Si la souris est au dessus du bouton, on zoom sur ce bouton
if (mouseOver)
{
	camera_set_view_size(view_camera[0],cameraWidth,cameraHeight);
	camera_set_view_pos(view_camera[0],x-100,y-125);
}
else
{
	camera_set_view_size(view_camera[0],1366,768);
	camera_set_view_pos(view_camera[0],0,0);
}