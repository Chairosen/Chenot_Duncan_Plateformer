switch (O_Life_Manager.playerHP)
{
	case 5 :
		room_goto(R_End);
		break;
	case 4 :
		room_goto(R_End);
		break;
	case 3:
		room_goto(R_End);
		break;
	case 2 :
		room_goto(R_Bad_End);
		break;
	default :
		room_goto(R_Bad_End);
		break;
}