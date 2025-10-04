/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

draw_sprite_ext(sprite_index,image_index,x,255,1,0.2,0,c_black,0.4);


draw_self();

if(obj_control.game_time mod floor(game_get_speed(gamespeed_fps)*0.5) == 0)
{
	coins = 0;
	with obj_coin
		if(inside)
			other.coins += 1;
}

draw_text(x,y-32-16,string(coins));