if (O_Life_Manager.playerHP < 5)
{
	O_Life_Manager.playerHP += 1;
	instance_destroy(self);
}