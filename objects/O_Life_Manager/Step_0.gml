//Definition of the cases when the player respawn
if (playerHP <= 0)
{
	Sc_Respawn();
	playerHP = 5;
}
if (O_Player.x <0 || O_Player.x > room_width)
{
	Sc_Respawn();
	room_goto(R_Rats_End);
}
if (O_Player.y <0 || O_Player.y > room_height)
{
	Sc_Respawn();
	room_goto(R_Rats_End);
}
