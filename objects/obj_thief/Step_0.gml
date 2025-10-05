/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
event_inherited();

if(image_index >= (image_number-1) and image_speed != -1)
	image_speed = -1;
	
if((image_index >= (image_number-1)) and not grabbed)
{
	audio_play_sound(snd_thief_steal,3,false);
	grabbed = true;
	if(obj_shield.x < obj_tax_collector.x-6)
		image_index -= 1;
	else
	if(x < obj_tax_collector.x)
		for(var i = 0; i < instance_number(obj_coin); i++)
		{
			var _c = instance_find(obj_coin, i);
			if(_c.inside)
			{
				image_blend = c_red;
				image_index -= 1;
				instance_destroy(_c);
				obj_control.thief_steals += 1;
				break;
			}
		}
}

if(image_index < 1 and (image_speed == -1))
	instance_destroy();