/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

if(instance_place(x,y,obj_shield) and not closed)
{
	image_index = 1;
	closed = true;
	audio_play_sound(snd_manhole,3,false);
}

if(instance_place(x,y,obj_cart) and not closed)
{
	audio_play_sound(snd_manhole,3,false);
	image_index = 1;
	closed = true;
	obj_control.sewer_hole_bumps += 1;
	with obj_coin
		if (inside)
		{
			y -= 6 * (room_height - y)/(obj_cart.bbox_bottom-obj_cart.bbox_top) // * (obj_cart.bbox_bottom-y)/(obj_cart.bbox_bottom-obj_cart.bbox_top)
			vspeed += 3.5;
			hspeed += (irandom(1)-0.5)*2.0;
		}
			
}