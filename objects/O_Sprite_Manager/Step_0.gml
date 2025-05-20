switch (O_Life_Manager.dirtyness)
{
	case 5:
		idle = S_Player_Idle;
		walkRight = S_Player_Walk_Right;
		break;
	case 4:
		idle = S_Player_Idle_1;
		walkRight = S_Player_Walk_Right_1;
		break;
	case 3:
		idle = S_Player_Idle_2;
		walkRight = S_Player_Walk_Right_2;
		break;
	case 2:
		idle = S_Player_Idle_3;
		walkRight = S_Player_Walk_Right_3;
		break;
	default :
		idle = S_Player_Idle_4;
		walkRight = S_Player_Walk_Right_4;
		break;
		
}
switch (O_Player.dirX)
{
	case -1:
		O_Player.image_angle += 10;
		O_Player.sprite_index = walkRight;
		O_Player.image_xscale = -1;
		break;
	case 1 :
		O_Player.image_angle -= 10;
		O_Player.sprite_index = walkRight;
		O_Player.image_xscale = 1;
		break;
	default :
		O_Player.image_angle = 0;
		O_Player.sprite_index = idle;
		O_Player.image_xscale = 1;
		break;
}