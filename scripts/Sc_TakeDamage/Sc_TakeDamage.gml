// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function Sc_TakeDamage(traget,damage = 1){
	O_Life_Manager.playerHP -= damage;
	O_Player.image_blend = c_red;
	O_Life_Manager.alarm[0] = 60;
}