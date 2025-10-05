/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();



if(obj_cart.bbox_right < x and moving and cd <= 0 and mouse_check_button(mb_left) and array_length(a_coins) > 0 and point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom))
{
	var _c = array_pop(a_coins)
	var _o = array_pop(a_offsets)
	audio_play_sound(snd_knock,3,false);
	if(_c )
	{
		instance_create_depth(x+_o,y-16,depth-1,obj_coin);
		coins -= 1;
	}
	cd = max_cd;
}

if (cd > 0)
	cd -= 1;
	
if(thief and not thieving and x < obj_tax_collector.x+32+32)
{
	thieving = true;
	image_index = 1;
	instance_create_depth(bbox_right,y+8,depth-1,obj_thief);
	audio_play_sound(snd_door_opening,3,false);
}