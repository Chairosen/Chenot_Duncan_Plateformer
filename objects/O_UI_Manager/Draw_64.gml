for (var i = 0; i < O_Life_Manager.playerHP; i++)
{
	draw_sprite(S_Chocolate_Nugget,0,30+i*40,30);
}
if (alarm[0] > 0)
{
	draw_set_color(c_black);
	draw_set_font(Font1);
	draw_text_ext_transformed(640, 300, "Afin de passer à la meilleure vie possible au plus vite, vous devez vous faire vendre le plus propre possible. Pour ça roulez le plus vite possible jusqu'au terminal de paiement et confirmez votre achat d'une pépite.",32,500,2,2,0);
}