if (O_Life_Manager.dirtyness > 0)
{
	O_Life_Manager.dirtyness -= 1;
	instance_destroy(self);
}